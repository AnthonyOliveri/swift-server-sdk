[**Back to README**](./README.md)
# QueryParametersAPI {#top}

### Methods
 * [**testAllTheThingsQueryParam**](#testAllTheThingsQueryParam)
 * [**testBooleanQueryParam**](#testBooleanQueryParam)
 * [**testCSVQueryParam**](#testCSVQueryParam)
 * [**testDateQueryParam**](#testDateQueryParam)
 * [**testDateTimeQueryParam**](#testDateTimeQueryParam)
 * [**testDoubleQueryParam**](#testDoubleQueryParam)
 * [**testFloatQueryParam**](#testFloatQueryParam)
 * [**testIntegerQueryParam**](#testIntegerQueryParam)
 * [**testLongQueryParam**](#testLongQueryParam)
 * [**testMultiQueryParam**](#testMultiQueryParam)
 * [**testOptionalQueryParam**](#testOptionalQueryParam)
 * [**testPipesQueryParam**](#testPipesQueryParam)
 * [**testSSVQueryParam**](#testSSVQueryParam)
 * [**testStringQueryParam**](#testStringQueryParam)
 * [**testTSVQueryParam**](#testTSVQueryParam)


### **testAllTheThingsQueryParam**  {#testAllTheThingsQueryParam}
---
```swift
public static func testAllTheThingsQueryParam(string: String, float: Float, double: Double, integer: Int, long: Int64, boolean: Bool, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, completionHandler: @escaping (_ returnedData: QueryModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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
- **multi**  (required) 
- **date**  (required) 
- **dateTime**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `QueryModel?`, Int?, [String: String]?, HttpError?

#### Response
[`QueryModel`](QueryModel.md)

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
let multi: [String] = [] // 
let date: Date = Date() // 
let dateTime: Date = Date() // 

QueryParametersAPI.testAllTheThingsQueryParam(string: string, float: float, double: double, integer: integer, long: long, boolean: boolean, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, multi: multi, date: date, dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBooleanQueryParam**  {#testBooleanQueryParam}
---
```swift
public static func testBooleanQueryParam(boolean: Bool, completionHandler: @escaping (_ returnedData: Bool?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testBooleanQueryParam(boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
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


### **testCSVQueryParam**  {#testCSVQueryParam}
---
```swift
public static func testCSVQueryParam(csvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testCSVQueryParam(csvArray: csvArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateQueryParam**  {#testDateQueryParam}
---
```swift
public static func testDateQueryParam(date: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **date**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Date?`, Int?, [String: String]?, HttpError?

#### Response
[`Date`](Date.md)

### Authentication

No authentication required


### Example

```swift

let date: Date = Date() // 

QueryParametersAPI.testDateQueryParam(date: date) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateTimeQueryParam**  {#testDateTimeQueryParam}
---
```swift
public static func testDateTimeQueryParam(dateTime: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **dateTime**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Date?`, Int?, [String: String]?, HttpError?

#### Response
[`Date`](Date.md)

### Authentication

No authentication required


### Example

```swift

let dateTime: Date = Date() // 

QueryParametersAPI.testDateTimeQueryParam(dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDoubleQueryParam**  {#testDoubleQueryParam}
---
```swift
public static func testDoubleQueryParam(double: Double, completionHandler: @escaping (_ returnedData: Double?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testDoubleQueryParam(double: double) { (returnedData, statusCode, responseHeaders, error) in
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


### **testFloatQueryParam**  {#testFloatQueryParam}
---
```swift
public static func testFloatQueryParam(float: Float, completionHandler: @escaping (_ returnedData: Float?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testFloatQueryParam(float: float) { (returnedData, statusCode, responseHeaders, error) in
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


### **testIntegerQueryParam**  {#testIntegerQueryParam}
---
```swift
public static func testIntegerQueryParam(integer: Int, completionHandler: @escaping (_ returnedData: Int?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testIntegerQueryParam(integer: integer) { (returnedData, statusCode, responseHeaders, error) in
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


### **testLongQueryParam**  {#testLongQueryParam}
---
```swift
public static func testLongQueryParam(long: Int64, completionHandler: @escaping (_ returnedData: Int64?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testLongQueryParam(long: long) { (returnedData, statusCode, responseHeaders, error) in
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


### **testMultiQueryParam**  {#testMultiQueryParam}
---
```swift
public static func testMultiQueryParam(multi: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **multi**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let multi: [String] = [] // 

QueryParametersAPI.testMultiQueryParam(multi: multi) { (returnedData, statusCode, responseHeaders, error) in
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


### **testOptionalQueryParam**  {#testOptionalQueryParam}
---
```swift
public static func testOptionalQueryParam(float: Float, double: Double, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, string: String? = nil, integer: Int? = nil, long: Int64? = nil, boolean: Bool? = nil, completionHandler: @escaping (_ returnedData: QueryModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **float**  (required) 
- **double**  (required) 
- **csvArray**  (required) 
- **ssvArray**  (required) 
- **tsvArray**  (required) 
- **pipesArray**  (required) 
- **multi**  (required) 
- **date**  (required) 
- **dateTime**  (required) 
- **string**  (optional) 
    - defaults to xix
- **integer**  (optional) 
- **long**  (optional) 
    - defaults to 17
- **boolean**  (optional) 
- **completionHandler** (required)
    - closure takes as arguments `QueryModel?`, Int?, [String: String]?, HttpError?

#### Response
[`QueryModel`](QueryModel.md)

### Authentication

No authentication required


### Example

```swift

let float: Float = 3.4 // 
let double: Double = 1.2 // 
let csvArray: [String] = [] // 
let ssvArray: [String] = [] // 
let tsvArray: [String] = [] // 
let pipesArray: [String] = [] // 
let multi: [String] = [] // 
let date: Date = Date() // 
let dateTime: Date = Date() // 
let string: String = "xix" // 
let integer: Int = 56 // 
let long: Int64 = 17 // 
let boolean: Bool = true // 

QueryParametersAPI.testOptionalQueryParam(float: float, double: double, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, multi: multi, date: date, dateTime: dateTime, string: string, integer: integer, long: long, boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
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


### **testPipesQueryParam**  {#testPipesQueryParam}
---
```swift
public static func testPipesQueryParam(pipesArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testPipesQueryParam(pipesArray: pipesArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testSSVQueryParam**  {#testSSVQueryParam}
---
```swift
public static func testSSVQueryParam(ssvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testSSVQueryParam(ssvArray: ssvArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testStringQueryParam**  {#testStringQueryParam}
---
```swift
public static func testStringQueryParam(string: String, completionHandler: @escaping (_ returnedData: String?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testStringQueryParam(string: string) { (returnedData, statusCode, responseHeaders, error) in
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


### **testTSVQueryParam**  {#testTSVQueryParam}
---
```swift
public static func testTSVQueryParam(tsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

QueryParametersAPI.testTSVQueryParam(tsvArray: tsvArray) { (returnedData, statusCode, responseHeaders, error) in
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
