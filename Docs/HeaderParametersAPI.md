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
public static func testAllTheThingsHeaderParam(completionHandler: (HeaderModel?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `HeaderModel?`, `Response?` and  `Error?`

#### Response
[**HeaderModel**](HeaderModel.md)

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testAllTheThingsHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.toJSONString(prettyPrint: true))
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testBooleanHeaderParam**  {#testBooleanHeaderParam}
---
```swift
public static func testBooleanHeaderParam(completionHandler: (Bool?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `Bool?`, `Response?` and  `Error?`

#### Response
**Bool**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testBooleanHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testCSVHeaderParam**  {#testCSVHeaderParam}
---
```swift
public static func testCSVHeaderParam(completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testCSVHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.description)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testDateHeaderParam**  {#testDateHeaderParam}
---
```swift
public static func testDateHeaderParam(completionHandler: (Date?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `Date?`, `Response?` and  `Error?`

#### Response
[**Date**](Date.md)

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testDateHeaderParam() { (result, response, error) in
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


### **testDateTimeHeaderParam**  {#testDateTimeHeaderParam}
---
```swift
public static func testDateTimeHeaderParam(completionHandler: (Date?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `Date?`, `Response?` and  `Error?`

#### Response
[**Date**](Date.md)

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testDateTimeHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.toJSONString(prettyPrint: true))
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testDoubleHeaderParam**  {#testDoubleHeaderParam}
---
```swift
public static func testDoubleHeaderParam(completionHandler: (Double?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `Double?`, `Response?` and  `Error?`

#### Response
**Double**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testDoubleHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testFloatHeaderParam**  {#testFloatHeaderParam}
---
```swift
public static func testFloatHeaderParam(completionHandler: (Float?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `Float?`, `Response?` and  `Error?`

#### Response
**Float**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testFloatHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testIntegerHeaderParam**  {#testIntegerHeaderParam}
---
```swift
public static func testIntegerHeaderParam(completionHandler: (Int?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `Int?`, `Response?` and  `Error?`

#### Response
**Int**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testIntegerHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testLongHeaderParam**  {#testLongHeaderParam}
---
```swift
public static func testLongHeaderParam(completionHandler: (Int64?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `Int64?`, `Response?` and  `Error?`

#### Response
**Int64**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testLongHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testOptionalHeaderParam**  {#testOptionalHeaderParam}
---
```swift
public static func testOptionalHeaderParam(completionHandler: (HeaderModel?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `HeaderModel?`, `Response?` and  `Error?`

#### Response
[**HeaderModel**](HeaderModel.md)

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testOptionalHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.toJSONString(prettyPrint: true))
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testPipesHeaderParam**  {#testPipesHeaderParam}
---
```swift
public static func testPipesHeaderParam(completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testPipesHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.description)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testSSVHeaderParam**  {#testSSVHeaderParam}
---
```swift
public static func testSSVHeaderParam(completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testSSVHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.description)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testStringHeaderParam**  {#testStringHeaderParam}
---
```swift
public static func testStringHeaderParam(completionHandler: (String?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `String?`, `Response?` and  `Error?`

#### Response
**String**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testStringHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


### **testTSVHeaderParam**  {#testTSVHeaderParam}
---
```swift
public static func testTSVHeaderParam(completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift


HeaderParametersAPI.testTSVHeaderParam() { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result.description)
    } else  {
        switch response!.statusCode {
        case 400:
            // Response body is of type ErrorModel
            print("bad request")
            ErrorModel(JSONString: response!.responseText!)
        case 500:
            // Response body is of type ErrorModel
            print("server error")
            ErrorModel(JSONString: response!.responseText!)
        default:
            print(response!.responseText!)
        }
    }
}
```


[**Back to Top**](#top)
