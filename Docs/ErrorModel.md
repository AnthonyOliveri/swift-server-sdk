

[**Back to README**](./README.md)
# ErrorModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let errorModel: ErrorModel = ErrorModel(JSONString: jsonString)

// Maps JSON string to array of ErrorModel
let errorModelArray: [ErrorModel] = Mapper<ErrorModel>().mapArray(JSONString: jsonString)

// Maps JSON String to Dictionary mapping String to ErrorModel
let Dictionary: [String: ErrorModel] = Mapper<ErrorModel>().mapDictionary(JSONString: jsonString);

// Converts Swift Object to JSON string
let jsonString: String = errorModel.toJSONString(prettyPrint: true)
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


