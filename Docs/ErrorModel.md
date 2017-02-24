

[**Back to README**](./README.md)
# ErrorModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let jsonString = ""
let errorModel: ErrorModel? = ErrorModel(JSONString: jsonString)
```
###
```swift
// Maps JSON string to array of ErrorModel
let jsonString = ""
let errorModelArray: [ErrorModel]? = Mapper<ErrorModel>().mapArray(JSONString: jsonString)
```
###
```swift
// Maps JSON String to Dictionary mapping String to ErrorModel
let jsonString = ""
let Dictionary: [String: ErrorModel]? = Mapper<ErrorModel>().mapDictionary(JSONString: jsonString)
```
###
```swift
// Converts Swift Object to JSON string
let json: [String: Any] = [:]
let errorModel = ErrorModel(JSON: json)
let jsonString: String? = errorModel?.toJSONString(prettyPrint: true)
```

### Fields 
 - [**message**](#message)

---


#### message   {#message}

```swift
var message: String?
```

- 

---


[**Back to Top**](#top)


