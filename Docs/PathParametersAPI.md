[**Back to README**](./README.md)
# PathParametersAPI {#top}

### Methods
 * [**testAllTheThingsPathParam**](#testAllTheThingsPathParam)
 * [**testBooleanPathParam**](#testBooleanPathParam)
 * [**testCSVPathParam**](#testCSVPathParam)
 * [**testDoublePathParam**](#testDoublePathParam)
 * [**testFloatPathParam**](#testFloatPathParam)
 * [**testIntegerPathParam**](#testIntegerPathParam)
 * [**testLongPathParam**](#testLongPathParam)
 * [**testPipesPathParam**](#testPipesPathParam)
 * [**testSSVPathParam**](#testSSVPathParam)
 * [**testStringPathParam**](#testStringPathParam)
 * [**testTSVPathParam**](#testTSVPathParam)


### **testAllTheThingsPathParam**  {#testAllTheThingsPathParam}
---
```swift
public static func testAllTheThingsPathParam(string: String, float: Float, double: Double, integer: Int, long: Int64, boolean: Bool, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], completionHandler: @escaping (_ returnedData: PathModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **string**  (required) 
- **float**  (required) 
- **double**  (required) 
- **integer**  (required) 
- **long**  (required) 
- **boolean**  (required) 
- **csvArray**  (required) 
- **ssvArray**  (required) 
- **tsvArray**  (required) 
- **pipesArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `PathModel?`, Int?, [String: String]?, HttpError?

#### Response
[`PathModel`](PathModel.md)

### Authentication

No authentication required


### Example

```swift

let string: String = "string_example" // 
let float: Float = 3.4 // 
let double: Double = 1.2 // 
let integer: Int = 56 // 
let long: Int64 = 789 // 
let boolean: Bool = true // 
let csvArray: [String] = [] // 
let ssvArray: [String] = [] // 
let tsvArray: [String] = [] // 
let pipesArray: [String] = [] // 

PathParametersAPI.testAllTheThingsPathParam(string: string, float: float, double: double, integer: integer, long: long, boolean: boolean, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testBooleanPathParam**  {#testBooleanPathParam}
---
```swift
public static func testBooleanPathParam(boolean: Bool, completionHandler: @escaping (_ returnedData: Bool?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **boolean**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Bool?`, Int?, [String: String]?, HttpError?

#### Response
`Bool`

### Authentication

No authentication required


### Example

```swift

let boolean: Bool = true // 

PathParametersAPI.testBooleanPathParam(boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testCSVPathParam**  {#testCSVPathParam}
---
```swift
public static func testCSVPathParam(csvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **csvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let csvArray: [String] = [] // 

PathParametersAPI.testCSVPathParam(csvArray: csvArray) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testDoublePathParam**  {#testDoublePathParam}
---
```swift
public static func testDoublePathParam(double: Double, completionHandler: @escaping (_ returnedData: Double?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **double**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Double?`, Int?, [String: String]?, HttpError?

#### Response
`Double`

### Authentication

No authentication required


### Example

```swift

let double: Double = 1.2 // 

PathParametersAPI.testDoublePathParam(double: double) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testFloatPathParam**  {#testFloatPathParam}
---
```swift
public static func testFloatPathParam(float: Float, completionHandler: @escaping (_ returnedData: Float?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **float**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Float?`, Int?, [String: String]?, HttpError?

#### Response
`Float`

### Authentication

No authentication required


### Example

```swift

let float: Float = 3.4 // 

PathParametersAPI.testFloatPathParam(float: float) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testIntegerPathParam**  {#testIntegerPathParam}
---
```swift
public static func testIntegerPathParam(integer: Int, completionHandler: @escaping (_ returnedData: Int?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **integer**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Int?`, Int?, [String: String]?, HttpError?

#### Response
`Int`

### Authentication

No authentication required


### Example

```swift

let integer: Int = 56 // 

PathParametersAPI.testIntegerPathParam(integer: integer) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testLongPathParam**  {#testLongPathParam}
---
```swift
public static func testLongPathParam(long: Int64, completionHandler: @escaping (_ returnedData: Int64?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **long**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Int64?`, Int?, [String: String]?, HttpError?

#### Response
`Int64`

### Authentication

No authentication required


### Example

```swift

let long: Int64 = 789 // 

PathParametersAPI.testLongPathParam(long: long) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testPipesPathParam**  {#testPipesPathParam}
---
```swift
public static func testPipesPathParam(pipesArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **pipesArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let pipesArray: [String] = [] // 

PathParametersAPI.testPipesPathParam(pipesArray: pipesArray) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testSSVPathParam**  {#testSSVPathParam}
---
```swift
public static func testSSVPathParam(ssvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **ssvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let ssvArray: [String] = [] // 

PathParametersAPI.testSSVPathParam(ssvArray: ssvArray) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testStringPathParam**  {#testStringPathParam}
---
```swift
public static func testStringPathParam(string: String, completionHandler: @escaping (_ returnedData: String?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **string**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `String?`, Int?, [String: String]?, HttpError?

#### Response
`String`

### Authentication

No authentication required


### Example

```swift

let string: String = "string_example" // 

PathParametersAPI.testStringPathParam(string: string) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


### **testTSVPathParam**  {#testTSVPathParam}
---
```swift
public static func testTSVPathParam(tsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **tsvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let tsvArray: [String] = [] // 

PathParametersAPI.testTSVPathParam(tsvArray: tsvArray) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        switch status {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
        case 500:
            // Response body is of type ErrorModel
            print("server error")
        default:
            break
        }
        print(responseHeaders)
    }
}
```


[**Back to Top**](#top)
