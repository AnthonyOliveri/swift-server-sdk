//
//  EnumTestAPI.swift
//  TestSdkStandalone
//
//  Generated by IBM Bluemix Mobile DevEx.
//


import Foundation
import ObjectMapper
import SimpleHttpClient


public class EnumTestAPI: TestSdkStandaloneUtility {


    /**
        

        - parameter string: . If this parameter is not supplied, it defaults to xvii.
        - parameter float: . If this parameter is not supplied, it defaults to 1.9.
        - parameter double: . If this parameter is not supplied, it defaults to 1.7.
        - parameter integer: . If this parameter is not supplied, it defaults to 17.
        - parameter long: . If this parameter is not supplied, it defaults to 19.
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testEnum(string: String? = nil, float: Float? = nil, double: Double? = nil, integer: Int? = nil, long: Int64? = nil, completionHandler: @escaping (_ returnedData: EnumModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {

        let path = "/enum/1"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "string", value: string?.description))
        queryParameters.append(URLQueryItem(name: "float", value: float?.description))
        queryParameters.append(URLQueryItem(name: "double", value: double?.description))
        queryParameters.append(URLQueryItem(name: "integer", value: integer?.description))
        queryParameters.append(URLQueryItem(name: "long", value: long?.description))
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

            guard error != nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: EnumModel.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter string: . If this parameter is not supplied, it defaults to xvii.
        - parameter float: . If this parameter is not supplied, it defaults to 1.9.
        - parameter double: . If this parameter is not supplied, it defaults to 1.7.
        - parameter integer: . If this parameter is not supplied, it defaults to 17.
        - parameter long: . If this parameter is not supplied, it defaults to 19.
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testEnumThree(string: String? = nil, float: Float? = nil, double: Double? = nil, integer: Int? = nil, long: Int64? = nil, completionHandler: @escaping (_ returnedData: EnumModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {

        let path = "/enum/3"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "string", value: string?.description))
        queryParameters.append(URLQueryItem(name: "float", value: float?.description))
        queryParameters.append(URLQueryItem(name: "double", value: double?.description))
        queryParameters.append(URLQueryItem(name: "integer", value: integer?.description))
        queryParameters.append(URLQueryItem(name: "long", value: long?.description))
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

            guard error != nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: EnumModel.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }


    /**
        

        - parameter string: . If this parameter is not supplied, it defaults to xvii.
        - parameter float: . If this parameter is not supplied, it defaults to 1.9.
        - parameter double: . If this parameter is not supplied, it defaults to 1.7.
        - parameter integer: . If this parameter is not supplied, it defaults to 17.
        - parameter long: . If this parameter is not supplied, it defaults to 19.
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func testEnumTwo(string: String? = nil, float: Float? = nil, double: Double? = nil, integer: Int? = nil, long: Int64? = nil, completionHandler: @escaping (_ returnedData: EnumModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {

        let path = "/enum/2"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "string", value: string?.description))
        queryParameters.append(URLQueryItem(name: "float", value: float?.description))
        queryParameters.append(URLQueryItem(name: "double", value: double?.description))
        queryParameters.append(URLQueryItem(name: "integer", value: integer?.description))
        queryParameters.append(URLQueryItem(name: "long", value: long?.description))
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

            guard error != nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status!,
               status == 200,
               let data = data {

                let returnValue = extractResponseFromData(data: data, type: EnumModel.self)
                completionHandler(returnValue, status, headers, error)
            } else {
                completionHandler(nil, status, headers, error)
            }
        }

    }

}
