//
//  HeaderParametersAPI.swift
//  TestSdkStandalone
//
//  Generated by IBM Bluemix Mobile DevEx.
//


import Foundation
import ObjectMapper
import SimpleHttpClient


public class HeaderParametersAPI: TestSdkStandaloneUtility {


    /**
        

        - parameter xString: 
        - parameter xFloat: 
        - parameter xDouble: 
        - parameter xInteger: 
        - parameter xLong: 
        - parameter xBoolean: 
        - parameter xCsvArray: 
        - parameter xSsvArray: 
        - parameter xTsvArray: 
        - parameter xPipesArray: 
        - parameter date: 
        - parameter dateTime: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testAllTheThingsHeaderParam(xString: String, xFloat: Float, xDouble: Double, xInteger: Int, xLong: Int64, xBoolean: Bool, xCsvArray: [String], xSsvArray: [String], xTsvArray: [String], xPipesArray: [String], date: Date, dateTime: Date, completionHandler: @escaping (_ returnedData: HeaderModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/allTheThings"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-string"] = convertToString(xString)
        requestHeaders["x-float"] = convertToString(xFloat)
        requestHeaders["x-double"] = convertToString(xDouble)
        requestHeaders["x-integer"] = convertToString(xInteger)
        requestHeaders["x-long"] = convertToString(xLong)
        requestHeaders["x-boolean"] = convertToString(xBoolean)
        requestHeaders["x-csv-array"] = convertToString(xCsvArray)
        requestHeaders["x-ssv-array"] = convertToString(xSsvArray)
        requestHeaders["x-tsv-array"] = convertToString(xTsvArray)
        requestHeaders["x-pipes-array"] = convertToString(xPipesArray)
        requestHeaders["date"] = date.iso8601DateString
        requestHeaders["dateTime"] = dateTime.iso8601DateTimeString

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

                let returnValue = extractResponseFromData(data: data, type: HeaderModel.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter xBoolean: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testBooleanHeaderParam(xBoolean: Bool, completionHandler: @escaping (_ returnedData: Bool?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/boolean"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-boolean"] = convertToString(xBoolean)

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
        

        - parameter xCsvArray: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testCSVHeaderParam(xCsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/csv"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-csv-array"] = convertToString(xCsvArray)

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
    public static func testDateHeaderParam(date: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/date"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["date"] = date.iso8601DateString

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
    public static func testDateTimeHeaderParam(dateTime: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/dateTime"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["dateTime"] = dateTime.iso8601DateTimeString

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
        

        - parameter xDouble: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testDoubleHeaderParam(xDouble: Double, completionHandler: @escaping (_ returnedData: Double?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/double"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-double"] = convertToString(xDouble)

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
        

        - parameter xFloat: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testFloatHeaderParam(xFloat: Float, completionHandler: @escaping (_ returnedData: Float?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/float"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-float"] = convertToString(xFloat)

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
        

        - parameter xInteger: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testIntegerHeaderParam(xInteger: Int, completionHandler: @escaping (_ returnedData: Int?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/integer"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-integer"] = convertToString(xInteger)

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
        

        - parameter xLong: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testLongHeaderParam(xLong: Int64, completionHandler: @escaping (_ returnedData: Int64?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/long"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-long"] = convertToString(xLong)

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
        

        - parameter xFloat: 
        - parameter xDouble: 
        - parameter xCsvArray: 
        - parameter xSsvArray: 
        - parameter xTsvArray: 
        - parameter xPipesArray: 
        - parameter date: 
        - parameter dateTime: 
        - parameter xString: 
        - parameter xInteger: . If this parameter is not supplied, it defaults to 17.
        - parameter xLong: 
        - parameter xBoolean: . If this parameter is not supplied, it defaults to false.
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testOptionalHeaderParam(xFloat: Float, xDouble: Double, xCsvArray: [String], xSsvArray: [String], xTsvArray: [String], xPipesArray: [String], date: Date, dateTime: Date, xString: String? = nil, xInteger: Int? = nil, xLong: Int64? = nil, xBoolean: Bool? = nil, completionHandler: @escaping (_ returnedData: HeaderModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/optionals"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        if let header = xString {
            requestHeaders["x-string"] = convertToString(header)
        }
        requestHeaders["x-float"] = convertToString(xFloat)
        requestHeaders["x-double"] = convertToString(xDouble)
        if let header = xInteger {
            requestHeaders["x-integer"] = convertToString(header)
        }
        if let header = xLong {
            requestHeaders["x-long"] = convertToString(header)
        }
        if let header = xBoolean {
            requestHeaders["x-boolean"] = convertToString(header)
        }
        requestHeaders["x-csv-array"] = convertToString(xCsvArray)
        requestHeaders["x-ssv-array"] = convertToString(xSsvArray)
        requestHeaders["x-tsv-array"] = convertToString(xTsvArray)
        requestHeaders["x-pipes-array"] = convertToString(xPipesArray)
        requestHeaders["date"] = date.iso8601DateString
        requestHeaders["dateTime"] = dateTime.iso8601DateTimeString

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

                let returnValue = extractResponseFromData(data: data, type: HeaderModel.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter xPipesArray: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testPipesHeaderParam(xPipesArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/pipes"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-pipes-array"] = convertToString(xPipesArray)

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
        

        - parameter xSsvArray: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testSSVHeaderParam(xSsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/ssv"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-ssv-array"] = convertToString(xSsvArray)

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
        

        - parameter xString: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testStringHeaderParam(xString: String, completionHandler: @escaping (_ returnedData: String?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/string"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-string"] = convertToString(xString)

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
        

        - parameter xTsvArray: 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testTSVHeaderParam(xTsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/params/header/tsv"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!
        let splitUrl: [String] = requestUrl.absoluteString.components(separatedBy: "://")
        let httpResource = HttpResource(schema: splitUrl[0], host: splitUrl[1], port: nil, path: path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["x-tsv-array"] = convertToString(xTsvArray)

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
