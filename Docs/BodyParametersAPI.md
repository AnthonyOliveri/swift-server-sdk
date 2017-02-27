[**Back to README**](./README.md)
# BodyParametersAPI {#top}

### Methods
 * [**testBodyBooleanParam**](#testBodyBooleanParam)
 * [**testBodyDoubleParam**](#testBodyDoubleParam)
 * [**testBodyFloatParam**](#testBodyFloatParam)
 * [**testBodyIntegerParam**](#testBodyIntegerParam)
 * [**testBodyLongParam**](#testBodyLongParam)
 * [**testBodyStringParam**](#testBodyStringParam)
 * [**testBooleanArrayBodyParam**](#testBooleanArrayBodyParam)
 * [**testBooleanMapBodyParam**](#testBooleanMapBodyParam)
 * [**testDateArrayBodyParam**](#testDateArrayBodyParam)
 * [**testDateBodyParam**](#testDateBodyParam)
 * [**testDateMapBodyParam**](#testDateMapBodyParam)
 * [**testDateTimeArrayBodyParam**](#testDateTimeArrayBodyParam)
 * [**testDateTimeBodyParam**](#testDateTimeBodyParam)
 * [**testDateTimeMapBodyParam**](#testDateTimeMapBodyParam)
 * [**testDoubleArrayBodyParam**](#testDoubleArrayBodyParam)
 * [**testDoubleMapBodyParam**](#testDoubleMapBodyParam)
 * [**testFloatArrayBodyParam**](#testFloatArrayBodyParam)
 * [**testFloatMapBodyParam**](#testFloatMapBodyParam)
 * [**testGenericObject**](#testGenericObject)
 * [**testGenericObjectArray**](#testGenericObjectArray)
 * [**testGenericObjectMap**](#testGenericObjectMap)
 * [**testIntegerArrayBodyParam**](#testIntegerArrayBodyParam)
 * [**testIntegerMapBodyParam**](#testIntegerMapBodyParam)
 * [**testLongArrayBodyParam**](#testLongArrayBodyParam)
 * [**testLongMapBodyParam**](#testLongMapBodyParam)
 * [**testModelArrayBodyParam**](#testModelArrayBodyParam)
 * [**testModelBodyParam**](#testModelBodyParam)
 * [**testModelMapBodyParam**](#testModelMapBodyParam)
 * [**testStringArrayBodyParam**](#testStringArrayBodyParam)
 * [**testStringMapBodyParam**](#testStringMapBodyParam)


### **testBodyBooleanParam**  {#testBodyBooleanParam}
---
```swift
public static func testBodyBooleanParam(boolean: Bool, completionHandler: @escaping (_ returnedData: Bool?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

BodyParametersAPI.testBodyBooleanParam(boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBodyDoubleParam**  {#testBodyDoubleParam}
---
```swift
public static func testBodyDoubleParam(double: Double, completionHandler: @escaping (_ returnedData: Double?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

BodyParametersAPI.testBodyDoubleParam(double: double) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBodyFloatParam**  {#testBodyFloatParam}
---
```swift
public static func testBodyFloatParam(float: Float, completionHandler: @escaping (_ returnedData: Float?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

BodyParametersAPI.testBodyFloatParam(float: float) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBodyIntegerParam**  {#testBodyIntegerParam}
---
```swift
public static func testBodyIntegerParam(integer: Int, completionHandler: @escaping (_ returnedData: Int?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

BodyParametersAPI.testBodyIntegerParam(integer: integer) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBodyLongParam**  {#testBodyLongParam}
---
```swift
public static func testBodyLongParam(long: Int64, completionHandler: @escaping (_ returnedData: Int64?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

BodyParametersAPI.testBodyLongParam(long: long) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBodyStringParam**  {#testBodyStringParam}
---
```swift
public static func testBodyStringParam(string: String, completionHandler: @escaping (_ returnedData: String?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

BodyParametersAPI.testBodyStringParam(string: string) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBooleanArrayBodyParam**  {#testBooleanArrayBodyParam}
---
```swift
public static func testBooleanArrayBodyParam(boolean: [Bool], completionHandler: @escaping (_ returnedData: [Bool]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **boolean**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[Bool]?`, Int?, [String: String]?, HttpError?

#### Response
`[Bool]`

### Authentication

No authentication required


### Example

```swift

let boolean: [Bool] = [] // 

BodyParametersAPI.testBooleanArrayBodyParam(boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBooleanMapBodyParam**  {#testBooleanMapBodyParam}
---
```swift
public static func testBooleanMapBodyParam(boolean: Any, completionHandler: @escaping (_ returnedData: [String:Bool]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **boolean**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String:Bool]?`, Int?, [String: String]?, HttpError?

#### Response
`[String:Bool]`

### Authentication

No authentication required


### Example

```swift

let boolean: Any = nil // 

BodyParametersAPI.testBooleanMapBodyParam(boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateArrayBodyParam**  {#testDateArrayBodyParam}
---
```swift
public static func testDateArrayBodyParam(date: [Date], completionHandler: @escaping (_ returnedData: [Date]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **date**  (required) 
    - see [**[Date]**](Date.md)
- **completionHandler** (required)
    - closure takes as arguments `[Date]?`, Int?, [String: String]?, HttpError?

#### Response
[`[Date]`](Date.md)

### Authentication

No authentication required


### Example

```swift

let date: [Date] = [] // 

BodyParametersAPI.testDateArrayBodyParam(date: date) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateBodyParam**  {#testDateBodyParam}
---
```swift
public static func testDateBodyParam(date: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

BodyParametersAPI.testDateBodyParam(date: date) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateMapBodyParam**  {#testDateMapBodyParam}
---
```swift
public static func testDateMapBodyParam(date: Any, completionHandler: @escaping (_ returnedData: [String:Date]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **date**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String:Date]?`, Int?, [String: String]?, HttpError?

#### Response
[`[String:Date]`](Date.md)

### Authentication

No authentication required


### Example

```swift

let date: Any = nil // 

BodyParametersAPI.testDateMapBodyParam(date: date) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateTimeArrayBodyParam**  {#testDateTimeArrayBodyParam}
---
```swift
public static func testDateTimeArrayBodyParam(dateTime: [Date], completionHandler: @escaping (_ returnedData: [Date]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **dateTime**  (required) 
    - see [**[Date]**](Date.md)
- **completionHandler** (required)
    - closure takes as arguments `[Date]?`, Int?, [String: String]?, HttpError?

#### Response
[`[Date]`](Date.md)

### Authentication

No authentication required


### Example

```swift

let dateTime: [Date] = [] // 

BodyParametersAPI.testDateTimeArrayBodyParam(dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateTimeBodyParam**  {#testDateTimeBodyParam}
---
```swift
public static func testDateTimeBodyParam(dateTime: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

BodyParametersAPI.testDateTimeBodyParam(dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateTimeMapBodyParam**  {#testDateTimeMapBodyParam}
---
```swift
public static func testDateTimeMapBodyParam(dateTime: Any, completionHandler: @escaping (_ returnedData: [String:Date]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **dateTime**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String:Date]?`, Int?, [String: String]?, HttpError?

#### Response
[`[String:Date]`](Date.md)

### Authentication

No authentication required


### Example

```swift

let dateTime: Any = nil // 

BodyParametersAPI.testDateTimeMapBodyParam(dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDoubleArrayBodyParam**  {#testDoubleArrayBodyParam}
---
```swift
public static func testDoubleArrayBodyParam(double: [Double], completionHandler: @escaping (_ returnedData: [Double]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **double**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[Double]?`, Int?, [String: String]?, HttpError?

#### Response
`[Double]`

### Authentication

No authentication required


### Example

```swift

let double: [Double] = [] // 

BodyParametersAPI.testDoubleArrayBodyParam(double: double) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDoubleMapBodyParam**  {#testDoubleMapBodyParam}
---
```swift
public static func testDoubleMapBodyParam(double: Any, completionHandler: @escaping (_ returnedData: [String:Double]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **double**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String:Double]?`, Int?, [String: String]?, HttpError?

#### Response
`[String:Double]`

### Authentication

No authentication required


### Example

```swift

let double: Any = nil // 

BodyParametersAPI.testDoubleMapBodyParam(double: double) { (returnedData, statusCode, responseHeaders, error) in
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


### **testFloatArrayBodyParam**  {#testFloatArrayBodyParam}
---
```swift
public static func testFloatArrayBodyParam(float: [Float], completionHandler: @escaping (_ returnedData: [Float]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **float**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[Float]?`, Int?, [String: String]?, HttpError?

#### Response
`[Float]`

### Authentication

No authentication required


### Example

```swift

let float: [Float] = [] // 

BodyParametersAPI.testFloatArrayBodyParam(float: float) { (returnedData, statusCode, responseHeaders, error) in
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


### **testFloatMapBodyParam**  {#testFloatMapBodyParam}
---
```swift
public static func testFloatMapBodyParam(float: Any, completionHandler: @escaping (_ returnedData: [String:Float]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **float**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String:Float]?`, Int?, [String: String]?, HttpError?

#### Response
`[String:Float]`

### Authentication

No authentication required


### Example

```swift

let float: Any = nil // 

BodyParametersAPI.testFloatMapBodyParam(float: float) { (returnedData, statusCode, responseHeaders, error) in
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


### **testGenericObject**  {#testGenericObject}
---
```swift
public static func testGenericObject(body: Any, completionHandler: @escaping (_ returnedData: Any?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **body**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Any?`, Int?, [String: String]?, HttpError?

#### Response
`Any`

### Authentication

No authentication required


### Example

```swift

let body: Any = nil

BodyParametersAPI.testGenericObject(body: body) { (returnedData, statusCode, responseHeaders, error) in
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


### **testGenericObjectArray**  {#testGenericObjectArray}
---
```swift
public static func testGenericObjectArray(objectArray: Any, completionHandler: @escaping (_ returnedData: Any?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **objectArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Any?`, Int?, [String: String]?, HttpError?

#### Response
`Any`

### Authentication

No authentication required


### Example

```swift

let objectArray: Any = nil

BodyParametersAPI.testGenericObjectArray(objectArray: objectArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testGenericObjectMap**  {#testGenericObjectMap}
---
```swift
public static func testGenericObjectMap(objectMap: Any, completionHandler: @escaping (_ returnedData: Any?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **objectMap**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Any?`, Int?, [String: String]?, HttpError?

#### Response
`Any`

### Authentication

No authentication required


### Example

```swift

let objectMap: Any = nil

BodyParametersAPI.testGenericObjectMap(objectMap: objectMap) { (returnedData, statusCode, responseHeaders, error) in
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


### **testIntegerArrayBodyParam**  {#testIntegerArrayBodyParam}
---
```swift
public static func testIntegerArrayBodyParam(integer: [Int], completionHandler: @escaping (_ returnedData: [Int]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **integer**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[Int]?`, Int?, [String: String]?, HttpError?

#### Response
`[Int]`

### Authentication

No authentication required


### Example

```swift

let integer: [Int] = [] // 

BodyParametersAPI.testIntegerArrayBodyParam(integer: integer) { (returnedData, statusCode, responseHeaders, error) in
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


### **testIntegerMapBodyParam**  {#testIntegerMapBodyParam}
---
```swift
public static func testIntegerMapBodyParam(integer: Any, completionHandler: @escaping (_ returnedData: [String:Int]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **integer**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String:Int]?`, Int?, [String: String]?, HttpError?

#### Response
`[String:Int]`

### Authentication

No authentication required


### Example

```swift

let integer: Any = nil // 

BodyParametersAPI.testIntegerMapBodyParam(integer: integer) { (returnedData, statusCode, responseHeaders, error) in
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


### **testLongArrayBodyParam**  {#testLongArrayBodyParam}
---
```swift
public static func testLongArrayBodyParam(long: [Int64], completionHandler: @escaping (_ returnedData: [Int64]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **long**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[Int64]?`, Int?, [String: String]?, HttpError?

#### Response
`[Int64]`

### Authentication

No authentication required


### Example

```swift

let long: [Int64] = [] // 

BodyParametersAPI.testLongArrayBodyParam(long: long) { (returnedData, statusCode, responseHeaders, error) in
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


### **testLongMapBodyParam**  {#testLongMapBodyParam}
---
```swift
public static func testLongMapBodyParam(long: Any, completionHandler: @escaping (_ returnedData: [String:Int64]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **long**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String:Int64]?`, Int?, [String: String]?, HttpError?

#### Response
`[String:Int64]`

### Authentication

No authentication required


### Example

```swift

let long: Any = nil // 

BodyParametersAPI.testLongMapBodyParam(long: long) { (returnedData, statusCode, responseHeaders, error) in
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


### **testModelArrayBodyParam**  {#testModelArrayBodyParam}
---
```swift
public static func testModelArrayBodyParam(modelArray: [BodyModel], completionHandler: @escaping (_ returnedData: [BodyModel]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **modelArray**  (required) 
    - see [**[BodyModel]**](BodyModel.md)
- **completionHandler** (required)
    - closure takes as arguments `[BodyModel]?`, Int?, [String: String]?, HttpError?

#### Response
[`[BodyModel]`](BodyModel.md)

### Authentication

No authentication required


### Example

```swift

let modelArray: [BodyModel] = [] // 

BodyParametersAPI.testModelArrayBodyParam(modelArray: modelArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testModelBodyParam**  {#testModelBodyParam}
---
```swift
public static func testModelBodyParam(model: BodyModel, completionHandler: @escaping (_ returnedData: BodyModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **model**  (required) 
    - see [**BodyModel**](BodyModel.md)
- **completionHandler** (required)
    - closure takes as arguments `BodyModel?`, Int?, [String: String]?, HttpError?

#### Response
[`BodyModel`](BodyModel.md)

### Authentication

No authentication required


### Example

```swift

let model: BodyModel = BodyModel() // 

BodyParametersAPI.testModelBodyParam(model: model) { (returnedData, statusCode, responseHeaders, error) in
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


### **testModelMapBodyParam**  {#testModelMapBodyParam}
---
```swift
public static func testModelMapBodyParam(modelMap: Any, completionHandler: @escaping (_ returnedData: [String:BodyModel]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **modelMap**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String:BodyModel]?`, Int?, [String: String]?, HttpError?

#### Response
[`[String:BodyModel]`](BodyModel.md)

### Authentication

No authentication required


### Example

```swift

let modelMap: Any = nil // 

BodyParametersAPI.testModelMapBodyParam(modelMap: modelMap) { (returnedData, statusCode, responseHeaders, error) in
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


### **testStringArrayBodyParam**  {#testStringArrayBodyParam}
---
```swift
public static func testStringArrayBodyParam(string: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **string**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String]`

### Authentication

No authentication required


### Example

```swift

let string: [String] = [] // 

BodyParametersAPI.testStringArrayBodyParam(string: string) { (returnedData, statusCode, responseHeaders, error) in
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


### **testStringMapBodyParam**  {#testStringMapBodyParam}
---
```swift
public static func testStringMapBodyParam(string: Any, completionHandler: @escaping (_ returnedData: [String:String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **string**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String:String]?`, Int?, [String: String]?, HttpError?

#### Response
`[String:String]`

### Authentication

No authentication required


### Example

```swift

let string: Any = nil // 

BodyParametersAPI.testStringMapBodyParam(string: string) { (returnedData, statusCode, responseHeaders, error) in
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
