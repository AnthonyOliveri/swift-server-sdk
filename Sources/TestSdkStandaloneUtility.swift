//
//  TestSdkStandalone
//
//  Generated by IBM Bluemix Mobile DevEx.
//


import Foundation
import ObjectMapper


public class TestSdkStandaloneUtility {

    internal static let basePath = "http://localhost:9000/api/test"


    internal static func delimeter(forCollectionFormat: String) -> String {

        switch forCollectionFormat {
        case "csv":
            return ","
        case "ssv":
            return " "
        case "tsv":
            return "\t"
        case "pipes":
            return "|"
        default:
            return ","
        }
    }

}


// MARK: Convert header of any type to String
// Covers all types except for Date, which is handled by the `Date` extension in this file
public extension TestSdkStandaloneUtility {

    internal static func convertToString<T>(_ input: T) -> String? {

        var string: String? = nil

        switch input {

        case is String:
            string = (input as! String)
        case is Int,
             is Int32,
             is Int64,
             is Double,
             is Float,
             is Bool:
            string = String(describing: input)
        case is Data:
            string = String(data: (input as! Data), encoding: .utf8)
        default:
            break
        }

        return string
    }

    internal static func convertToString(_ input: [String], collectionFormat: String) -> String? {

        return input.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(delimeter(forCollectionFormat: collectionFormat))\(string)"
        }
    }
}


// MARK: Converts API parameter to http body
public extension TestSdkStandaloneUtility {

    // Converts API parameter to http body
    internal static func convertToData<T>(_ input: T) -> Data? {

        var data: Data? = nil

        func dataFromPrimitive() -> Data {
            var input = input
            return Data(buffer: UnsafeBufferPointer(start: &input, count: 1))
        }

        switch input {

        case is Data:
            data = input as? Data
        case is Int,
             is Int32,
             is Int64,
             is Double,
             is Float,
             is Bool:
            data = dataFromPrimitive()
        case is String:
            data = (input as! String).data(using: .utf8)
        case is Date:
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
            let dateString = dateFormatter.string(from: (input as! Date))
            data = dateString.data(using: .utf8)
        default:
            break
        }

        return data
    }


    // Converts mappable API parameter to http body
    internal static func convertToData<T: Mappable>(input: T) -> Data? {

        return try? JSONSerialization.data(withJSONObject: input.toJSON(), options: [])
    }


    // Converts array API parameter to http body
    internal static func convertToData<T>(input: Array<T>) -> Data? {

        return try? JSONSerialization.data(withJSONObject: input, options: [])
    }


    // Converts mappable array API parameter to http body
    internal static func convertToData<T: Mappable>(input: Array<T>) -> Data? {

        let inputJSON: [[String: Any]] = input.map { (mappable: T) -> [String: Any] in
            mappable.toJSON()
        }

        return try? JSONSerialization.data(withJSONObject: inputJSON, options: [])
    }


    // Converts dictionary API parameter to http body
    internal static func convertToData<T, U>(input: Dictionary<T,U>) -> Data? {

        return try? JSONSerialization.data(withJSONObject: input, options: [])
    }


    // Converts mappable dictionary API parameter to http body
    internal static func convertToData<T, U: Mappable>(input: Dictionary<T,U>) -> Data? {

        var inputJSON: [T: [String: Any]] = [:]
        for (key, value) in input {
            inputJSON[key] = value.toJSON()
        }

        return try? JSONSerialization.data(withJSONObject: inputJSON, options: [])
    }

}


// MARK: Extract response from data
public extension TestSdkStandaloneUtility {

    // Converts the response data into the expected return type
    internal static func extractResponseFromData<T>(data: Data, type: T.Type, destinationURL: URL? = nil) -> T? {

        var responseData: T? = nil

        func primitiveFromData() -> T {
            return data.withUnsafeBytes({ (pointer: UnsafePointer<T>) -> T in
                return pointer.pointee
            })
        }

        switch type {

        case is Data.Type:
            if let url = destinationURL {
                DispatchQueue.global(qos: .background).async {
                    let file = try? FileHandle(forWritingTo: url)
                    file?.write(data)
                    file?.closeFile()
                }
            }
            return data as? T
        case is String.Type:
            if let dataString = String(data: data, encoding: .utf8) {
                responseData = dataString as? T
            }
        case is Int.Type,
             is Int32.Type,
             is Int64.Type,
             is Double.Type,
             is Float.Type,
             is Bool.Type:
                return primitiveFromData()
        case is Date.Type:
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"

            let dateTimeFormatter = DateFormatter()
            dateTimeFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"

            let dateTimeMillisecondFormatter = DateFormatter()
            dateTimeMillisecondFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"

            if let dataString = String(data: data, encoding: .utf8) {
                if let date = dateFormatter.date(from: dataString) {
                    responseData = date as? T
                }
                else if let dateTime = dateTimeFormatter.date(from: dataString) {
                    responseData = dateTime as? T
                }
                else if let dateTime = dateTimeMillisecondFormatter.date(from: dataString) {
                    responseData = dateTime as? T
                }
            }
        case is Collection.Type:
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) {
                responseData = json as? T
            }
        default:
            break
        }

        return responseData
    }


    // Converts the response data into the expected return type, where the return type is a model object
    internal static func extractResponseFromData<T: Mappable>(data: Data, type: T.Type) -> T? {

        var responseData: T? = nil
        if let dataJsonObject = try? JSONSerialization.jsonObject(with: data, options: []) {
            responseData = Mapper<T>().map(JSONObject: dataJsonObject)
        }
        return responseData
    }


    // Converts the response data into the expected return type, where the return type is an array or dictionary
    internal static func extractResponseFromData<T, U>(data: Data, containerType: T.Type, nestedType: U.Type) -> T? {

        return extractResponseFromData(data: data, type: containerType)
    }


    // Converts the response data into the expected return type, where the return type is an array or dictionary containing model objects
    internal static func extractResponseFromData<T, U: Mappable>(data: Data, containerType: T.Type, nestedType: U.Type) -> T? {

        var responseData: T? = nil

        switch containerType {

        case is [U].Type:
            if let responseJson = try? JSONSerialization.jsonObject(with: data, options: []) {
                responseData = Mapper<U>().mapArray(JSONObject: responseJson) as? T
            }
        // Dictionaries
        case is [String: U].Type:
            if let responseJson = try? JSONSerialization.jsonObject(with: data, options: []) {
                responseData = Mapper<U>().mapDictionary(JSONObject: responseJson) as? T
            }
        default:
            break
        }

        return responseData
    }

}


// MARK: Get ISO 8601 string representations of Date
internal extension Date {

    internal var iso8601DateString: String {

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: self)
    }

    internal var iso8601DateTimeString: String {

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        return dateFormatter.string(from: self)
    }
}
