[**Back to README**](./README.md)
# FormParametersAPI {#top}

### Methods
 * [**testAllTheThingsFormData**](#testAllTheThingsFormData)
 * [**testAllTheThingsUrlEncoded**](#testAllTheThingsUrlEncoded)
 * [**testBinaryFormData**](#testBinaryFormData)
 * [**testBinaryUrlEncoded**](#testBinaryUrlEncoded)
 * [**testBooleanFormData**](#testBooleanFormData)
 * [**testBooleanUrlEncoded**](#testBooleanUrlEncoded)
 * [**testByteFormData**](#testByteFormData)
 * [**testByteUrlEncoded**](#testByteUrlEncoded)
 * [**testCSVFormData**](#testCSVFormData)
 * [**testCSVUrlEncoded**](#testCSVUrlEncoded)
 * [**testDateFormData**](#testDateFormData)
 * [**testDateTimeFormData**](#testDateTimeFormData)
 * [**testDateTimeUrlEncoded**](#testDateTimeUrlEncoded)
 * [**testDateUrlEncoded**](#testDateUrlEncoded)
 * [**testDoubleFormData**](#testDoubleFormData)
 * [**testDoubleUrlEncoded**](#testDoubleUrlEncoded)
 * [**testFileFormData**](#testFileFormData)
 * [**testFileUrlEncoded**](#testFileUrlEncoded)
 * [**testFloatFormData**](#testFloatFormData)
 * [**testFloatUrlEncoded**](#testFloatUrlEncoded)
 * [**testIntegerFormData**](#testIntegerFormData)
 * [**testIntegerUrlEncoded**](#testIntegerUrlEncoded)
 * [**testLongFormData**](#testLongFormData)
 * [**testLongUrlEncoded**](#testLongUrlEncoded)
 * [**testMultiFormData**](#testMultiFormData)
 * [**testMultiUrlEncoded**](#testMultiUrlEncoded)
 * [**testOptionalsFormData**](#testOptionalsFormData)
 * [**testOptionalsUrlEncoded**](#testOptionalsUrlEncoded)
 * [**testPipesFormData**](#testPipesFormData)
 * [**testPipesUrlEncoded**](#testPipesUrlEncoded)
 * [**testSSVFormData**](#testSSVFormData)
 * [**testSSVUrlEncoded**](#testSSVUrlEncoded)
 * [**testStringFormData**](#testStringFormData)
 * [**testStringUrlEncoded**](#testStringUrlEncoded)
 * [**testTSVFormData**](#testTSVFormData)
 * [**testTSVUrlEncoded**](#testTSVUrlEncoded)


### **testAllTheThingsFormData**  {#testAllTheThingsFormData}
---
```swift
public static func testAllTheThingsFormData(string: String, float: Float, double: Double, integer: Int, long: Int64, boolean: Bool, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, completionHandler: @escaping (_ returnedData: FormModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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
    - closure takes as arguments `FormModel?`, Int?, [String: String]?, HttpError?

#### Response
[`FormModel`](FormModel.md)

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

FormParametersAPI.testAllTheThingsFormData(string: string, float: float, double: double, integer: integer, long: long, boolean: boolean, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, multi: multi, date: date, dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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


### **testAllTheThingsUrlEncoded**  {#testAllTheThingsUrlEncoded}
---
```swift
public static func testAllTheThingsUrlEncoded(string: String, float: Float, double: Double, integer: Int, long: Int64, boolean: Bool, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], date: Date, dateTime: Date, completionHandler: @escaping (_ returnedData: FormModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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
- **date**  (required) 
- **dateTime**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `FormModel?`, Int?, [String: String]?, HttpError?

#### Response
[`FormModel`](FormModel.md)

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
let date: Date = Date() // 
let dateTime: Date = Date() // 

FormParametersAPI.testAllTheThingsUrlEncoded(string: string, float: float, double: double, integer: integer, long: long, boolean: boolean, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, date: date, dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBinaryFormData**  {#testBinaryFormData}
---
```swift
public static func testBinaryFormData(binary: Data, completionHandler: @escaping (_ returnedData: Data?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **binary**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Data?`, Int?, [String: String]?, HttpError?

#### Response
[`Data`](Data.md)

### Authentication

No authentication required


### Example

```swift

let binary: Data = Data() // 

FormParametersAPI.testBinaryFormData(binary: binary) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBinaryUrlEncoded**  {#testBinaryUrlEncoded}
---
```swift
public static func testBinaryUrlEncoded(binary: Data, completionHandler: @escaping (_ returnedData: Data?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **binary**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Data?`, Int?, [String: String]?, HttpError?

#### Response
[`Data`](Data.md)

### Authentication

No authentication required


### Example

```swift

let binary: Data = Data() // 

FormParametersAPI.testBinaryUrlEncoded(binary: binary) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBooleanFormData**  {#testBooleanFormData}
---
```swift
public static func testBooleanFormData(boolean: Bool, completionHandler: @escaping (_ returnedData: Bool?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testBooleanFormData(boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
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


### **testBooleanUrlEncoded**  {#testBooleanUrlEncoded}
---
```swift
public static func testBooleanUrlEncoded(boolean: Bool, completionHandler: @escaping (_ returnedData: Bool?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testBooleanUrlEncoded(boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
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


### **testByteFormData**  {#testByteFormData}
---
```swift
public static func testByteFormData(byte: Data, completionHandler: @escaping (_ returnedData: Data?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **byte**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Data?`, Int?, [String: String]?, HttpError?

#### Response
[`Data`](Data.md)

### Authentication

No authentication required


### Example

```swift

let byte: Data = Data() // 

FormParametersAPI.testByteFormData(byte: byte) { (returnedData, statusCode, responseHeaders, error) in
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


### **testByteUrlEncoded**  {#testByteUrlEncoded}
---
```swift
public static func testByteUrlEncoded(byte: Data, completionHandler: @escaping (_ returnedData: Data?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **byte**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Data?`, Int?, [String: String]?, HttpError?

#### Response
[`Data`](Data.md)

### Authentication

No authentication required


### Example

```swift

let byte: Data = Data() // 

FormParametersAPI.testByteUrlEncoded(byte: byte) { (returnedData, statusCode, responseHeaders, error) in
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


### **testCSVFormData**  {#testCSVFormData}
---
```swift
public static func testCSVFormData(csvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testCSVFormData(csvArray: csvArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testCSVUrlEncoded**  {#testCSVUrlEncoded}
---
```swift
public static func testCSVUrlEncoded(csvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testCSVUrlEncoded(csvArray: csvArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateFormData**  {#testDateFormData}
---
```swift
public static func testDateFormData(date: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testDateFormData(date: date) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateTimeFormData**  {#testDateTimeFormData}
---
```swift
public static func testDateTimeFormData(dateTime: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testDateTimeFormData(dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateTimeUrlEncoded**  {#testDateTimeUrlEncoded}
---
```swift
public static func testDateTimeUrlEncoded(dateTime: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testDateTimeUrlEncoded(dateTime: dateTime) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDateUrlEncoded**  {#testDateUrlEncoded}
---
```swift
public static func testDateUrlEncoded(date: Date, completionHandler: @escaping (_ returnedData: Date?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testDateUrlEncoded(date: date) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDoubleFormData**  {#testDoubleFormData}
---
```swift
public static func testDoubleFormData(double: Double, completionHandler: @escaping (_ returnedData: Double?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testDoubleFormData(double: double) { (returnedData, statusCode, responseHeaders, error) in
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


### **testDoubleUrlEncoded**  {#testDoubleUrlEncoded}
---
```swift
public static func testDoubleUrlEncoded(double: Double, completionHandler: @escaping (_ returnedData: Double?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testDoubleUrlEncoded(double: double) { (returnedData, statusCode, responseHeaders, error) in
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


### **testFileFormData**  {#testFileFormData}
---
```swift
public static func testFileFormData(file: URL, destinationURL: URL?, completionHandler: @escaping (_ returnedData: URL?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) throws -> Void
```

>

#### Parameters

- **file**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `URL?`, Int?, [String: String]?, HttpError?

#### Response
[`URL`](URL.md)

### Authentication

No authentication required


### Example

```swift

let file: URL = URL(string: "/path/to/file.txt")!

try? FormParametersAPI.testFileFormData(file: file) { (returnedData, statusCode, responseHeaders, error) in
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


### **testFileUrlEncoded**  {#testFileUrlEncoded}
---
```swift
public static func testFileUrlEncoded(file: URL, destinationURL: URL?, completionHandler: @escaping (_ returnedData: URL?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) throws -> Void
```

>

#### Parameters

- **file**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `URL?`, Int?, [String: String]?, HttpError?

#### Response
[`URL`](URL.md)

### Authentication

No authentication required


### Example

```swift

let file: URL = URL(string: "/path/to/file.txt")!

try? FormParametersAPI.testFileUrlEncoded(file: file) { (returnedData, statusCode, responseHeaders, error) in
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


### **testFloatFormData**  {#testFloatFormData}
---
```swift
public static func testFloatFormData(float: Float, completionHandler: @escaping (_ returnedData: Float?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testFloatFormData(float: float) { (returnedData, statusCode, responseHeaders, error) in
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


### **testFloatUrlEncoded**  {#testFloatUrlEncoded}
---
```swift
public static func testFloatUrlEncoded(float: Float, completionHandler: @escaping (_ returnedData: Float?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testFloatUrlEncoded(float: float) { (returnedData, statusCode, responseHeaders, error) in
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


### **testIntegerFormData**  {#testIntegerFormData}
---
```swift
public static func testIntegerFormData(integer: Int, completionHandler: @escaping (_ returnedData: Int?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testIntegerFormData(integer: integer) { (returnedData, statusCode, responseHeaders, error) in
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


### **testIntegerUrlEncoded**  {#testIntegerUrlEncoded}
---
```swift
public static func testIntegerUrlEncoded(integer: Int, completionHandler: @escaping (_ returnedData: Int?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testIntegerUrlEncoded(integer: integer) { (returnedData, statusCode, responseHeaders, error) in
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


### **testLongFormData**  {#testLongFormData}
---
```swift
public static func testLongFormData(long: Int64, completionHandler: @escaping (_ returnedData: Int64?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testLongFormData(long: long) { (returnedData, statusCode, responseHeaders, error) in
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


### **testLongUrlEncoded**  {#testLongUrlEncoded}
---
```swift
public static func testLongUrlEncoded(long: Int64, completionHandler: @escaping (_ returnedData: Int64?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testLongUrlEncoded(long: long) { (returnedData, statusCode, responseHeaders, error) in
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


### **testMultiFormData**  {#testMultiFormData}
---
```swift
public static func testMultiFormData(multi: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testMultiFormData(multi: multi) { (returnedData, statusCode, responseHeaders, error) in
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


### **testMultiUrlEncoded**  {#testMultiUrlEncoded}
---
```swift
public static func testMultiUrlEncoded(multi: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testMultiUrlEncoded(multi: multi) { (returnedData, statusCode, responseHeaders, error) in
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


### **testOptionalsFormData**  {#testOptionalsFormData}
---
```swift
public static func testOptionalsFormData(float: Float, double: Double, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, string: String? = nil, integer: Int? = nil, long: Int64? = nil, boolean: Bool? = nil, completionHandler: @escaping (_ returnedData: FormModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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
- **integer**  (optional) 
- **long**  (optional) 
- **boolean**  (optional) 
    - defaults to false
- **completionHandler** (required)
    - closure takes as arguments `FormModel?`, Int?, [String: String]?, HttpError?

#### Response
[`FormModel`](FormModel.md)

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
let string: String = "string_example" // 
let integer: Int = 56 // 
let long: Int64 = 789 // 
let boolean: Bool = false // 

FormParametersAPI.testOptionalsFormData(float: float, double: double, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, multi: multi, date: date, dateTime: dateTime, string: string, integer: integer, long: long, boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
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


### **testOptionalsUrlEncoded**  {#testOptionalsUrlEncoded}
---
```swift
public static func testOptionalsUrlEncoded(float: Float, double: Double, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], date: Date, dateTime: Date, string: String? = nil, integer: Int? = nil, long: Int64? = nil, boolean: Bool? = nil, completionHandler: @escaping (_ returnedData: FormModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **float**  (required) 
- **double**  (required) 
- **csvArray**  (required) 
- **ssvArray**  (required) 
- **tsvArray**  (required) 
- **pipesArray**  (required) 
- **date**  (required) 
- **dateTime**  (required) 
- **string**  (optional) 
- **integer**  (optional) 
- **long**  (optional) 
- **boolean**  (optional) 
    - defaults to false
- **completionHandler** (required)
    - closure takes as arguments `FormModel?`, Int?, [String: String]?, HttpError?

#### Response
[`FormModel`](FormModel.md)

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
let date: Date = Date() // 
let dateTime: Date = Date() // 
let string: String = "string_example" // 
let integer: Int = 56 // 
let long: Int64 = 789 // 
let boolean: Bool = false // 

FormParametersAPI.testOptionalsUrlEncoded(float: float, double: double, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, date: date, dateTime: dateTime, string: string, integer: integer, long: long, boolean: boolean) { (returnedData, statusCode, responseHeaders, error) in
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


### **testPipesFormData**  {#testPipesFormData}
---
```swift
public static func testPipesFormData(pipesArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testPipesFormData(pipesArray: pipesArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testPipesUrlEncoded**  {#testPipesUrlEncoded}
---
```swift
public static func testPipesUrlEncoded(pipesArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testPipesUrlEncoded(pipesArray: pipesArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testSSVFormData**  {#testSSVFormData}
---
```swift
public static func testSSVFormData(ssvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testSSVFormData(ssvArray: ssvArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testSSVUrlEncoded**  {#testSSVUrlEncoded}
---
```swift
public static func testSSVUrlEncoded(ssvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testSSVUrlEncoded(ssvArray: ssvArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testStringFormData**  {#testStringFormData}
---
```swift
public static func testStringFormData(string: String, completionHandler: @escaping (_ returnedData: String?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testStringFormData(string: string) { (returnedData, statusCode, responseHeaders, error) in
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


### **testStringUrlEncoded**  {#testStringUrlEncoded}
---
```swift
public static func testStringUrlEncoded(string: String, completionHandler: @escaping (_ returnedData: String?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testStringUrlEncoded(string: string) { (returnedData, statusCode, responseHeaders, error) in
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


### **testTSVFormData**  {#testTSVFormData}
---
```swift
public static func testTSVFormData(tsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testTSVFormData(tsvArray: tsvArray) { (returnedData, statusCode, responseHeaders, error) in
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


### **testTSVUrlEncoded**  {#testTSVUrlEncoded}
---
```swift
public static func testTSVUrlEncoded(tsvArray: [String], completionHandler: @escaping (_ returnedData: [String]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
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

FormParametersAPI.testTSVUrlEncoded(tsvArray: tsvArray) { (returnedData, statusCode, responseHeaders, error) in
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
