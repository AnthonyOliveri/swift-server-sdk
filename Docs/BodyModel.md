

[**Back to README**](./README.md)
# BodyModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let bodyModel: BodyModel = BodyModel(JSONString: jsonString)

// Maps JSON string to array of BodyModel
let bodyModelArray: [BodyModel] = Mapper<BodyModel>().mapArray(JSONString: jsonString)

// Maps JSON String to Dictionary mapping String to BodyModel
let Dictionary: [String: BodyModel] = Mapper<BodyModel>().mapDictionary(JSONString: jsonString);

// Converts Swift Object to JSON string
let jsonString: String = bodyModel.toJSONString(prettyPrint: true)
```

### Fields 
 - [**bodyString**](#bodyString)
 - [**bodyFloat**](#bodyFloat)
 - [**bodyDouble**](#bodyDouble)
 - [**bodyInteger**](#bodyInteger)
 - [**bodyLong**](#bodyLong)
 - [**bodyBoolean**](#bodyBoolean)
 - [**bodyDate**](#bodyDate)
 - [**bodyDateTime**](#bodyDateTime)
 - [**bodyStringArray**](#bodyStringArray)
 - [**bodyFloatArray**](#bodyFloatArray)
 - [**bodyDoubleArray**](#bodyDoubleArray)
 - [**bodyIntegerArray**](#bodyIntegerArray)
 - [**bodyLongArray**](#bodyLongArray)
 - [**bodyBooleanArray**](#bodyBooleanArray)
 - [**bodyDateArray**](#bodyDateArray)
 - [**bodyDateTimeArray**](#bodyDateTimeArray)
 - [**bodyStringMap**](#bodyStringMap)
 - [**bodyFloatMap**](#bodyFloatMap)
 - [**bodyDoubleMap**](#bodyDoubleMap)
 - [**bodyIntegerMap**](#bodyIntegerMap)
 - [**bodyLongMap**](#bodyLongMap)
 - [**bodyBooleanMap**](#bodyBooleanMap)
 - [**bodyDateMap**](#bodyDateMap)
 - [**bodyDateTimeMap**](#bodyDateTimeMap)

---


#### bodyString   {#bodyString}

```swift
var bodyString: String?
```

- 

---


#### bodyFloat   {#bodyFloat}

```swift
var bodyFloat: Float?
```

- 

---


#### bodyDouble   {#bodyDouble}

```swift
var bodyDouble: Double?
```

- 

---


#### bodyInteger   {#bodyInteger}

```swift
var bodyInteger: Int?
```

- 

---


#### bodyLong   {#bodyLong}

```swift
var bodyLong: Int64?
```

- 

---


#### bodyBoolean   {#bodyBoolean}

```swift
var bodyBoolean: Bool?
```

- 

---


#### bodyDate   {#bodyDate}

```swift
var bodyDate: Date?
```

- 

---


#### bodyDateTime   {#bodyDateTime}

```swift
var bodyDateTime: Date?
```

- 

---


#### bodyStringArray   {#bodyStringArray}

```swift
var bodyStringArray: [String]?
```

- 
 - see [****](.md)

---


#### bodyFloatArray   {#bodyFloatArray}

```swift
var bodyFloatArray: [Float]?
```

- 
 - see [****](.md)

---


#### bodyDoubleArray   {#bodyDoubleArray}

```swift
var bodyDoubleArray: [Double]?
```

- 
 - see [****](.md)

---


#### bodyIntegerArray   {#bodyIntegerArray}

```swift
var bodyIntegerArray: [Int]?
```

- 
 - see [****](.md)

---


#### bodyLongArray   {#bodyLongArray}

```swift
var bodyLongArray: [Int64]?
```

- 
 - see [****](.md)

---


#### bodyBooleanArray   {#bodyBooleanArray}

```swift
var bodyBooleanArray: [Bool]?
```

- 
 - see [****](.md)

---


#### bodyDateArray   {#bodyDateArray}

```swift
var bodyDateArray: [Date]?
```

- 
 - see [**Date**](Date.md)

---


#### bodyDateTimeArray   {#bodyDateTimeArray}

```swift
var bodyDateTimeArray: [Date]?
```

- 
 - see [**Date**](Date.md)

---


#### bodyStringMap   {#bodyStringMap}

```swift
var bodyStringMap: [String:String]?
```

 - An array of ****s of this BodyModel object

---


#### bodyFloatMap   {#bodyFloatMap}

```swift
var bodyFloatMap: [String:Float]?
```

 - An array of ****s of this BodyModel object

---


#### bodyDoubleMap   {#bodyDoubleMap}

```swift
var bodyDoubleMap: [String:Double]?
```

 - An array of ****s of this BodyModel object

---


#### bodyIntegerMap   {#bodyIntegerMap}

```swift
var bodyIntegerMap: [String:Int]?
```

 - An array of ****s of this BodyModel object

---


#### bodyLongMap   {#bodyLongMap}

```swift
var bodyLongMap: [String:Int64]?
```

 - An array of ****s of this BodyModel object

---


#### bodyBooleanMap   {#bodyBooleanMap}

```swift
var bodyBooleanMap: [String:Bool]?
```

 - An array of ****s of this BodyModel object

---


#### bodyDateMap   {#bodyDateMap}

```swift
var bodyDateMap: [String:Date]?
```

 - An array of [**Date**](Date.md)s of this BodyModel object

---


#### bodyDateTimeMap   {#bodyDateTimeMap}

```swift
var bodyDateTimeMap: [String:Date]?
```

 - An array of [**Date**](Date.md)s of this BodyModel object

---


[**Back to Top**](#top)


