//
//  QueryParametersAPI.swift
//  TestSdkStandalone
//
//  Generated by IBM Bluemix Mobile DevEx.
//


import Foundation
import ObjectMapper
import SimpleHttpClient


public class QueryParametersAPI: TestSdkStandaloneUtility {


    /**
        

        - parameter string: 
        - parameter float: 
        - parameter double: 
        - parameter integer: 
        - parameter long: 
        - parameter boolean: 
        - parameter csvArray: 
        - parameter ssvArray: 
        - parameter tsvArray: 
        - parameter pipesArray: 
        - parameter multi: 
        - parameter date: 
        - parameter dateTime: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testAllTheThingsQueryParam(string: String, float: Float, double: Double, integer: Int, long: Int64, boolean: Bool, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, completionHandler: @escaping (_ returnedData: QueryModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/allTheThings"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "string", value: string.description))
        queryParameters.append(URLQueryItem(name: "float", value: float.description))
        queryParameters.append(URLQueryItem(name: "double", value: double.description))
        queryParameters.append(URLQueryItem(name: "integer", value: integer.description))
        queryParameters.append(URLQueryItem(name: "long", value: long.description))
        queryParameters.append(URLQueryItem(name: "boolean", value: boolean.description))
        queryParameters.append(URLQueryItem(name: "csvArray", value: csvArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "csv"))\(string)"
        }))
        queryParameters.append(URLQueryItem(name: "ssvArray", value: ssvArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "ssv"))\(string)"
        }))
        queryParameters.append(URLQueryItem(name: "tsvArray", value: tsvArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "tsv"))\(string)"
        }))
        queryParameters.append(URLQueryItem(name: "pipesArray", value: pipesArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "pipes"))\(string)"
        }))
        multi.forEach { (value) -> Void in
            queryParameters.append(URLQueryItem(name: "multi", value: "\(value)"))
        }
        queryParameters.append(URLQueryItem(name: "date", value: date.description))
        queryParameters.append(URLQueryItem(name: "dateTime", value: dateTime.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: QueryModel.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter boolean: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testBooleanQueryParam(boolean: Bool, completionHandler: @escaping (_ returnedData: Bool?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/boolean"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "boolean", value: boolean.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: Bool.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter csvArray: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testCSVQueryParam(csvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/csv"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "csvArray", value: csvArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "csv"))\(string)"
        }))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: [String].self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter date: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testDateQueryParam(date: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/date"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "date", value: date.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: Date.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter dateTime: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testDateTimeQueryParam(dateTime: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/dateTime"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "dateTime", value: dateTime.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: Date.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter double: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testDoubleQueryParam(double: Double, completionHandler: @escaping (_ returnedData: Double?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/double"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "double", value: double.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: Double.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter float: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testFloatQueryParam(float: Float, completionHandler: @escaping (_ returnedData: Float?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/float"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "float", value: float.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: Float.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter integer: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testIntegerQueryParam(integer: Int, completionHandler: @escaping (_ returnedData: Int?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/integer"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "integer", value: integer.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: Int.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter long: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testLongQueryParam(long: Int64, completionHandler: @escaping (_ returnedData: Int64?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/long"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "long", value: long.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: Int64.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter multi: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testMultiQueryParam(multi: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/multi"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        multi.forEach { (value) -> Void in
            queryParameters.append(URLQueryItem(name: "multi", value: "\(value)"))
        }
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: [String].self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter float: 
        - parameter double: 
        - parameter csvArray: 
        - parameter ssvArray: 
        - parameter tsvArray: 
        - parameter pipesArray: 
        - parameter multi: 
        - parameter date: 
        - parameter dateTime: 
        - parameter string: . If this parameter is not supplied, it defaults to xix.
        - parameter integer: 
        - parameter long: . If this parameter is not supplied, it defaults to 17.
        - parameter boolean: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testOptionalQueryParam(float: Float, double: Double, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, string: String? = nil, integer: Int? = nil, long: Int64? = nil, boolean: Bool? = nil, completionHandler: @escaping (_ returnedData: QueryModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/optionals"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "string", value: string?.description))
        queryParameters.append(URLQueryItem(name: "float", value: float.description))
        queryParameters.append(URLQueryItem(name: "double", value: double.description))
        queryParameters.append(URLQueryItem(name: "integer", value: integer?.description))
        queryParameters.append(URLQueryItem(name: "long", value: long?.description))
        queryParameters.append(URLQueryItem(name: "boolean", value: boolean?.description))
        queryParameters.append(URLQueryItem(name: "csvArray", value: csvArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "csv"))\(string)"
        }))
        queryParameters.append(URLQueryItem(name: "ssvArray", value: ssvArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "ssv"))\(string)"
        }))
        queryParameters.append(URLQueryItem(name: "tsvArray", value: tsvArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "tsv"))\(string)"
        }))
        queryParameters.append(URLQueryItem(name: "pipesArray", value: pipesArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "pipes"))\(string)"
        }))
        multi.forEach { (value) -> Void in
            queryParameters.append(URLQueryItem(name: "multi", value: "\(value)"))
        }
        queryParameters.append(URLQueryItem(name: "date", value: date.description))
        queryParameters.append(URLQueryItem(name: "dateTime", value: dateTime.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: QueryModel.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter pipesArray: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testPipesQueryParam(pipesArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/pipes"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "pipesArray", value: pipesArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "pipes"))\(string)"
        }))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: [String].self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter ssvArray: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testSSVQueryParam(ssvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/ssv"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "ssvArray", value: ssvArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "ssv"))\(string)"
        }))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: [String].self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter string: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testStringQueryParam(string: String, completionHandler: @escaping (_ returnedData: String?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/string"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "string", value: string.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: String.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter tsvArray: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testTSVQueryParam(tsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/query/tsv"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "tsvArray", value: tsvArray.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(self.delimeter(forCollectionFormat: "tsv"))\(string)"
        }))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: [String].self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }

}
