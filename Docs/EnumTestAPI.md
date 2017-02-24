[**Back to README**](./README.md)
# EnumTestAPI {#top}

### Methods
 * [**testEnum**](#testEnum)
 * [**testEnumThree**](#testEnumThree)
 * [**testEnumTwo**](#testEnumTwo)


### **testEnum**  {#testEnum}
---
```swift
public static func testEnum(string: String? = nil, float: Float? = nil, double: Double? = nil, integer: Int? = nil, long: Int64? = nil, completionHandler: @escaping (_ returnedData: EnumModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **string**  (optional) 
    - defaults to xvii
    - enum:
            - xvii
            - xix
- **float**  (optional) 
    - defaults to 1.9
- **double**  (optional) 
    - defaults to 1.7
- **integer**  (optional) 
    - defaults to 17
- **long**  (optional) 
    - defaults to 19
- **completionHandler** (required)
    - closure takes as arguments `EnumModel?`, Int?, [String: String]?, HttpError?

#### Response
[`EnumModel`](EnumModel.md)

### Authentication

No authentication required


### Example

```swift

let string: String = "xvii" // 
let float: Float = 1.9 // 
let double: Double = 1.7 // 
let integer: Int = 17 // 
let long: Int64 = 19 // 

EnumTestAPI.testEnum(string: string, float: float, double: double, integer: integer, long: long) { (returnedData, statusCode, responseHeaders, error) in
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


### **testEnumThree**  {#testEnumThree}
---
```swift
public static func testEnumThree(string: String? = nil, float: Float? = nil, double: Double? = nil, integer: Int? = nil, long: Int64? = nil, completionHandler: @escaping (_ returnedData: EnumModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **string**  (optional) 
    - defaults to xvii
    - enum:
            - xvii
            - xix
- **float**  (optional) 
    - defaults to 1.9
- **double**  (optional) 
    - defaults to 1.7
- **integer**  (optional) 
    - defaults to 17
- **long**  (optional) 
    - defaults to 19
- **completionHandler** (required)
    - closure takes as arguments `EnumModel?`, Int?, [String: String]?, HttpError?

#### Response
[`EnumModel`](EnumModel.md)

### Authentication

No authentication required


### Example

```swift

let string: String = "xvii" // 
let float: Float = 1.9 // 
let double: Double = 1.7 // 
let integer: Int = 17 // 
let long: Int64 = 19 // 

EnumTestAPI.testEnumThree(string: string, float: float, double: double, integer: integer, long: long) { (returnedData, statusCode, responseHeaders, error) in
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


### **testEnumTwo**  {#testEnumTwo}
---
```swift
public static func testEnumTwo(string: String? = nil, float: Float? = nil, double: Double? = nil, integer: Int? = nil, long: Int64? = nil, completionHandler: @escaping (_ returnedData: EnumModel?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) -> Void
```

>

#### Parameters

- **string**  (optional) 
    - defaults to xvii
    - enum:
            - xvii
            - xix
- **float**  (optional) 
    - defaults to 1.9
- **double**  (optional) 
    - defaults to 1.7
- **integer**  (optional) 
    - defaults to 17
- **long**  (optional) 
    - defaults to 19
- **completionHandler** (required)
    - closure takes as arguments `EnumModel?`, Int?, [String: String]?, HttpError?

#### Response
[`EnumModel`](EnumModel.md)

### Authentication

No authentication required


### Example

```swift

let string: String = "xvii" // 
let float: Float = 1.9 // 
let double: Double = 1.7 // 
let integer: Int = 17 // 
let long: Int64 = 19 // 

EnumTestAPI.testEnumTwo(string: string, float: float, double: double, integer: integer, long: long) { (returnedData, statusCode, responseHeaders, error) in
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


[**Back to Top**](#top)
