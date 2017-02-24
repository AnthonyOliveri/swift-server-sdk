

[**Back to README**](./README.md)
# BodyModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let jsonString = ""
let bodyModel: BodyModel? = BodyModel(JSONString: jsonString)
```
###
```swift
// Maps JSON string to array of BodyModel
let jsonString = ""
let bodyModelArray: [BodyModel]? = Mapper<BodyModel>().mapArray(JSONString: jsonString)
```
###
```swift
// Maps JSON String to Dictionary mapping String to BodyModel
let jsonString = ""
let Dictionary: [String: BodyModel]? = Mapper<BodyModel>().mapDictionary(JSONString: jsonString)
```
###
```swift
// Converts Swift Object to JSON string
let json: [String: Any] = [:]
let bodyModel = BodyModel(JSON: json)
let jsonString: String? = bodyModel?.toJSONString(prettyPrint: true)
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

---


#### bodyFloatArray   {#bodyFloatArray}

```swift
var bodyFloatArray: [Float]?
```

- 

---


#### bodyDoubleArray   {#bodyDoubleArray}

```swift
var bodyDoubleArray: [Double]?
```

- 

---


#### bodyIntegerArray   {#bodyIntegerArray}

```swift
var bodyIntegerArray: [Int]?
```

- 

---


#### bodyLongArray   {#bodyLongArray}

```swift
var bodyLongArray: [Int64]?
```

- 

---


#### bodyBooleanArray   {#bodyBooleanArray}

```swift
var bodyBooleanArray: [Bool]?
```

- 

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


---


#### bodyFloatMap   {#bodyFloatMap}

```swift
var bodyFloatMap: [String:Float]?
```


---


#### bodyDoubleMap   {#bodyDoubleMap}

```swift
var bodyDoubleMap: [String:Double]?
```


---


#### bodyIntegerMap   {#bodyIntegerMap}

```swift
var bodyIntegerMap: [String:Int]?
```


---


#### bodyLongMap   {#bodyLongMap}

```swift
var bodyLongMap: [String:Int64]?
```


---


#### bodyBooleanMap   {#bodyBooleanMap}

```swift
var bodyBooleanMap: [String:Bool]?
```


---


#### bodyDateMap   {#bodyDateMap}

```swift
var bodyDateMap: [String:Date]?
```

 - see [**Date**](Date.md)

---


#### bodyDateTimeMap   {#bodyDateTimeMap}

```swift
var bodyDateTimeMap: [String:Date]?
```

 - see [**Date**](Date.md)

---


[**Back to Top**](#top)


