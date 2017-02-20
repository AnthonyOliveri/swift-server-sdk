//
//  ErrorModel.swift
//
//  Generated by IBM Bluemix Mobile DevEx.
//


import Foundation
import ObjectMapper


public class ErrorModel: Mappable {


    /// 
    public var message: String?

    public init() {}


    // MARK: ObjectMapper

    required public init?(map: Map) { }

    public func mapping(map: Map) {

        self.message <- map["message"]
    }

}
