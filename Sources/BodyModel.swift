//
//  BodyModel.swift
//
//  Generated by IBM Bluemix Mobile DevEx.
//


import Foundation
import ObjectMapper


public class BodyModel: Mappable {


    /// 
    public var bodyString: String?
    /// 
    public var bodyFloat: Float?
    /// 
    public var bodyDouble: Double?
    /// 
    public var bodyInteger: Int?
    /// 
    public var bodyLong: Int64?
    /// 
    public var bodyBoolean: Bool?
    /// 
    public var bodyDate: Date?
    /// 
    public var bodyDateTime: Date?
    /// 
    public var bodyStringArray: [String]?
    /// 
    public var bodyFloatArray: [Float]?
    /// 
    public var bodyDoubleArray: [Double]?
    /// 
    public var bodyIntegerArray: [Int]?
    /// 
    public var bodyLongArray: [Int64]?
    /// 
    public var bodyBooleanArray: [Bool]?
    /// 
    public var bodyDateArray: [Date]?
    /// 
    public var bodyDateTimeArray: [Date]?
    public var bodyStringMap: [String:String]?
    public var bodyFloatMap: [String:Float]?
    public var bodyDoubleMap: [String:Double]?
    public var bodyIntegerMap: [String:Int]?
    public var bodyLongMap: [String:Int64]?
    public var bodyBooleanMap: [String:Bool]?
    public var bodyDateMap: [String:Date]?
    public var bodyDateTimeMap: [String:Date]?

    public init() {}


    // MARK: ObjectMapper

    required public init?(map: Map) { }

    public func mapping(map: Map) {

        self.bodyString <- map["bodyString"]
        self.bodyFloat <- map["bodyFloat"]
        self.bodyDouble <- map["bodyDouble"]
        self.bodyInteger <- map["bodyInteger"]
        self.bodyLong <- map["bodyLong"]
        self.bodyBoolean <- map["bodyBoolean"]
        self.bodyDate <- map["bodyDate"]
        self.bodyDateTime <- map["bodyDateTime"]
        self.bodyStringArray <- map["bodyStringArray"]
        self.bodyFloatArray <- map["bodyFloatArray"]
        self.bodyDoubleArray <- map["bodyDoubleArray"]
        self.bodyIntegerArray <- map["bodyIntegerArray"]
        self.bodyLongArray <- map["bodyLongArray"]
        self.bodyBooleanArray <- map["bodyBooleanArray"]
        self.bodyDateArray <- map["bodyDateArray"]
        self.bodyDateTimeArray <- map["bodyDateTimeArray"]
        self.bodyStringMap <- map["bodyStringMap"]
        self.bodyFloatMap <- map["bodyFloatMap"]
        self.bodyDoubleMap <- map["bodyDoubleMap"]
        self.bodyIntegerMap <- map["bodyIntegerMap"]
        self.bodyLongMap <- map["bodyLongMap"]
        self.bodyBooleanMap <- map["bodyBooleanMap"]
        self.bodyDateMap <- map["bodyDateMap"]
        self.bodyDateTimeMap <- map["bodyDateTimeMap"]
    }

}