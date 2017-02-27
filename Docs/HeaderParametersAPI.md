[**Back to README**](./README.md)
# HeaderParametersAPI {#top}

### Methods
 * [**testAllTheThingsHeaderParam**](#testAllTheThingsHeaderParam)
 * [**testBooleanHeaderParam**](#testBooleanHeaderParam)
 * [**testCSVHeaderParam**](#testCSVHeaderParam)
 * [**testDateHeaderParam**](#testDateHeaderParam)
 * [**testDateTimeHeaderParam**](#testDateTimeHeaderParam)
 * [**testDoubleHeaderParam**](#testDoubleHeaderParam)
 * [**testFloatHeaderParam**](#testFloatHeaderParam)
 * [**testIntegerHeaderParam**](#testIntegerHeaderParam)
 * [**testLongHeaderParam**](#testLongHeaderParam)
 * [**testOptionalHeaderParam**](#testOptionalHeaderParam)
 * [**testPipesHeaderParam**](#testPipesHeaderParam)
 * [**testSSVHeaderParam**](#testSSVHeaderParam)
 * [**testStringHeaderParam**](#testStringHeaderParam)
 * [**testTSVHeaderParam**](#testTSVHeaderParam)


### **testAllTheThingsHeaderParam**  {#testAllTheThingsHeaderParam}
---
```swift
public static func testAllTheThingsHeaderParam(xString: String, xFloat: Float, xDouble: Double, xInteger: Int, xLong: Int64, xBoolean: Bool, xCsvArray: [String], xSsvArray: [String], xTsvArray: [String], xPipesArray: [String], date: Date, dateTime: Date, completionHandler: @escaping (_ returnedData: HeaderModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xString**  (required) 
- **xFloat**  (required) 
- **xDouble**  (required) 
- **xInteger**  (required) 
- **xLong**  (required) 
- **xBoolean**  (required) 
- **xCsvArray**  (required) 
- **xSsvArray**  (required) 
- **xTsvArray**  (required) 
- **xPipesArray**  (required) 
- **date**  (required) 
- **dateTime**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `HeaderModel?`, Int?, [String: String]?, HttpError?

#### Response
[`HeaderModel`](HeaderModel.md)

### Authentication

No authentication required


### Example

```swift

let xString: String = "xString_example" // 
let xFloat: Float = 3.4 // 
let xDouble: Double = 1.2 // 
let xInteger: Int = 56 // 
let xLong: Int64 = 789 // 
let xBoolean: Bool = true // 
let xCsvArray: [String] = [] // 
let xSsvArray: [String] = [] // 
let xTsvArray: [String] = [] // 
let xPipesArray: [String] = [] // 
let date: Date = Date() // 
let dateTime: Date = Date() // 

HeaderParametersAPI.testAllTheThingsHeaderParam(xString: xString, xFloat: xFloat, xDouble: xDouble, xInteger: xInteger, xLong: xLong, xBoolean: xBoolean, xCsvArray: xCsvArray, xSsvArray: xSsvArray, xTsvArray: xTsvArray, xPipesArray: xPipesArray, date: date, dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testBooleanHeaderParam**  {#testBooleanHeaderParam}
---
```swift
public static func testBooleanHeaderParam(xBoolean: Bool, completionHandler: @escaping (_ returnedData: Bool?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xBoolean**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Bool?`, Int?, [String: String]?, HttpError?

#### Response
`Bool`

### Authentication

No authentication required


### Example

```swift

let xBoolean: Bool = true // 

HeaderParametersAPI.testBooleanHeaderParam(xBoolean: xBoolean) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testCSVHeaderParam**  {#testCSVHeaderParam}
---
```swift
public static func testCSVHeaderParam(xCsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xCsvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let xCsvArray: [String] = [] // 

HeaderParametersAPI.testCSVHeaderParam(xCsvArray: xCsvArray) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testDateHeaderParam**  {#testDateHeaderParam}
---
```swift
public static func testDateHeaderParam(date: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

HeaderParametersAPI.testDateHeaderParam(date: date) { (returnedData, statusCode, responseHeaders, error) in
    guard error == nil else {
        print(error!)
        return
    }
    if let result = returnedData {
        let resultString = TestSdkStandaloneUtility.convertToString(result)
        print(resultString ?? "Failed to convert the result to a string")
    } else if let status = statusCode {
        // No documented non-default responses
    }
}
```


### **testDateTimeHeaderParam**  {#testDateTimeHeaderParam}
---
```swift
public static func testDateTimeHeaderParam(dateTime: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

HeaderParametersAPI.testDateTimeHeaderParam(dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testDoubleHeaderParam**  {#testDoubleHeaderParam}
---
```swift
public static func testDoubleHeaderParam(xDouble: Double, completionHandler: @escaping (_ returnedData: Double?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xDouble**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Double?`, Int?, [String: String]?, HttpError?

#### Response
`Double`

### Authentication

No authentication required


### Example

```swift

let xDouble: Double = 1.2 // 

HeaderParametersAPI.testDoubleHeaderParam(xDouble: xDouble) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testFloatHeaderParam**  {#testFloatHeaderParam}
---
```swift
public static func testFloatHeaderParam(xFloat: Float, completionHandler: @escaping (_ returnedData: Float?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xFloat**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Float?`, Int?, [String: String]?, HttpError?

#### Response
`Float`

### Authentication

No authentication required


### Example

```swift

let xFloat: Float = 3.4 // 

HeaderParametersAPI.testFloatHeaderParam(xFloat: xFloat) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testIntegerHeaderParam**  {#testIntegerHeaderParam}
---
```swift
public static func testIntegerHeaderParam(xInteger: Int, completionHandler: @escaping (_ returnedData: Int?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xInteger**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Int?`, Int?, [String: String]?, HttpError?

#### Response
`Int`

### Authentication

No authentication required


### Example

```swift

let xInteger: Int = 56 // 

HeaderParametersAPI.testIntegerHeaderParam(xInteger: xInteger) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testLongHeaderParam**  {#testLongHeaderParam}
---
```swift
public static func testLongHeaderParam(xLong: Int64, completionHandler: @escaping (_ returnedData: Int64?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xLong**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Int64?`, Int?, [String: String]?, HttpError?

#### Response
`Int64`

### Authentication

No authentication required


### Example

```swift

let xLong: Int64 = 789 // 

HeaderParametersAPI.testLongHeaderParam(xLong: xLong) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testOptionalHeaderParam**  {#testOptionalHeaderParam}
---
```swift
public static func testOptionalHeaderParam(xFloat: Float, xDouble: Double, xCsvArray: [String], xSsvArray: [String], xTsvArray: [String], xPipesArray: [String], date: Date, dateTime: Date, xString: String? = nil, xInteger: Int? = nil, xLong: Int64? = nil, xBoolean: Bool? = nil, completionHandler: @escaping (_ returnedData: HeaderModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xFloat**  (required) 
- **xDouble**  (required) 
- **xCsvArray**  (required) 
- **xSsvArray**  (required) 
- **xTsvArray**  (required) 
- **xPipesArray**  (required) 
- **date**  (required) 
- **dateTime**  (required) 
- **xString**  (optional) 
- **xInteger**  (optional) 
    - defaults to 17
- **xLong**  (optional) 
- **xBoolean**  (optional) 
    - defaults to false
- **completionHandler** (required)
    - closure takes as arguments `HeaderModel?`, Int?, [String: String]?, HttpError?

#### Response
[`HeaderModel`](HeaderModel.md)

### Authentication

No authentication required


### Example

```swift

let xFloat: Float = 3.4 // 
let xDouble: Double = 1.2 // 
let xCsvArray: [String] = [] // 
let xSsvArray: [String] = [] // 
let xTsvArray: [String] = [] // 
let xPipesArray: [String] = [] // 
let date: Date = Date() // 
let dateTime: Date = Date() // 
let xString: String = "xString_example" // 
let xInteger: Int = 17 // 
let xLong: Int64 = 789 // 
let xBoolean: Bool = false // 

HeaderParametersAPI.testOptionalHeaderParam(xFloat: xFloat, xDouble: xDouble, xCsvArray: xCsvArray, xSsvArray: xSsvArray, xTsvArray: xTsvArray, xPipesArray: xPipesArray, date: date, dateTime: dateTime, xString: xString, xInteger: xInteger, xLong: xLong, xBoolean: xBoolean) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testPipesHeaderParam**  {#testPipesHeaderParam}
---
```swift
public static func testPipesHeaderParam(xPipesArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xPipesArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let xPipesArray: [String] = [] // 

HeaderParametersAPI.testPipesHeaderParam(xPipesArray: xPipesArray) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testSSVHeaderParam**  {#testSSVHeaderParam}
---
```swift
public static func testSSVHeaderParam(xSsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xSsvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let xSsvArray: [String] = [] // 

HeaderParametersAPI.testSSVHeaderParam(xSsvArray: xSsvArray) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testStringHeaderParam**  {#testStringHeaderParam}
---
```swift
public static func testStringHeaderParam(xString: String, completionHandler: @escaping (_ returnedData: String?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xString**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `String?`, Int?, [String: String]?, HttpError?

#### Response
`String`

### Authentication

No authentication required


### Example

```swift

let xString: String = "xString_example" // 

HeaderParametersAPI.testStringHeaderParam(xString: xString) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


### **testTSVHeaderParam**  {#testTSVHeaderParam}
---
```swift
public static func testTSVHeaderParam(xTsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **xTsvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let xTsvArray: [String] = [] // 

HeaderParametersAPI.testTSVHeaderParam(xTsvArray: xTsvArray) { (returnedData, statusCode, responseHeaders, error) in
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
        print(responseHeaders ?? "No reponse headers")
    }
}
```


[**Back to Top**](#top)
