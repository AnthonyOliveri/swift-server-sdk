[**Back to README**](./README.md)
# EnumTestAPI {#top}

### Methods
 * [**testEnum**](#testEnum)
 * [**testEnumThree**](#testEnumThree)
 * [**testEnumTwo**](#testEnumTwo)


### **testEnum**  {#testEnum}
---
```swift
public static func testEnum(string: String = xvii, float: Float = 1.9, double: Double = 1.7, integer: Int = 17, long: Int64 = 19, completionHandler: (EnumModel?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **string**  (optional) 
    - defaults to xvii
    - enum:
        - , 
        - 
- **float**  (optional) 
    - defaults to 1.9
- **double**  (optional) 
    - defaults to 1.7
- **integer**  (optional) 
    - defaults to 17
- **long**  (optional) 
    - defaults to 19
- **completionHandler** (required)
    - closure takes as arguments `EnumModel?`, `Response?` and  `Error?`

#### Response
[**EnumModel**](EnumModel.md)

### Authentication

No authentication required


### Example

```swift

var string: String? // String? (optional) | 
var float: Float? // Float? (optional) | 
var double: Double? // Double? (optional) | 
var integer: Int? // Int? (optional) | 
var long: Int64? // Int64? (optional) | 

EnumTestAPI.testEnum(string: string, float: float, double: double, integer: integer, long: long) { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.toJSONString(prettyPrint: true))
    } else  {
        switch response!.statusCode {
    }
}
```


### **testEnumThree**  {#testEnumThree}
---
```swift
public static func testEnumThree(string: String = xvii, float: Float = 1.9, double: Double = 1.7, integer: Int = 17, long: Int64 = 19, completionHandler: (EnumModel?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **string**  (optional) 
    - defaults to xvii
    - enum:
        - , 
        - 
- **float**  (optional) 
    - defaults to 1.9
- **double**  (optional) 
    - defaults to 1.7
- **integer**  (optional) 
    - defaults to 17
- **long**  (optional) 
    - defaults to 19
- **completionHandler** (required)
    - closure takes as arguments `EnumModel?`, `Response?` and  `Error?`

#### Response
[**EnumModel**](EnumModel.md)

### Authentication

No authentication required


### Example

```swift

var string: String? // String? (optional) | 
var float: Float? // Float? (optional) | 
var double: Double? // Double? (optional) | 
var integer: Int? // Int? (optional) | 
var long: Int64? // Int64? (optional) | 

EnumTestAPI.testEnumThree(string: string, float: float, double: double, integer: integer, long: long) { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.toJSONString(prettyPrint: true))
    } else  {
        switch response!.statusCode {
    }
}
```


### **testEnumTwo**  {#testEnumTwo}
---
```swift
public static func testEnumTwo(string: String = xvii, float: Float = 1.9, double: Double = 1.7, integer: Int = 17, long: Int64 = 19, completionHandler: (EnumModel?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **string**  (optional) 
    - defaults to xvii
    - enum:
        - , 
        - 
- **float**  (optional) 
    - defaults to 1.9
- **double**  (optional) 
    - defaults to 1.7
- **integer**  (optional) 
    - defaults to 17
- **long**  (optional) 
    - defaults to 19
- **completionHandler** (required)
    - closure takes as arguments `EnumModel?`, `Response?` and  `Error?`

#### Response
[**EnumModel**](EnumModel.md)

### Authentication

No authentication required


### Example

```swift

var string: String? // String? (optional) | 
var float: Float? // Float? (optional) | 
var double: Double? // Double? (optional) | 
var integer: Int? // Int? (optional) | 
var long: Int64? // Int64? (optional) | 

EnumTestAPI.testEnumTwo(string: string, float: float, double: double, integer: integer, long: long) { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.toJSONString(prettyPrint: true))
    } else  {
        switch response!.statusCode {
    }
}
```


[**Back to Top**](#top)
