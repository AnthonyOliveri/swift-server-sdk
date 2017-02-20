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
public static func testAllTheThingsQueryParam(string: String, float: Float, double: Double, integer: Int, long: Int64, boolean: Bool, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, completionHandler: (QueryModel?, Response?, Error?) -> Void) -> Void
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
    - closure takes as arguments `QueryModel?`, `Response?` and  `Error?`

#### Response
[**QueryModel**](QueryModel.md)

### Authentication

No authentication required


### Example

```swift

let string = "string_example" // String (required) | 
let float = 3.4 // Float (required) | 
let double = 1.2 // Double (required) | 
let integer = 56 // Int (required) | 
let long = 789 // Int64 (required) | 
let boolean = true // Bool (required) | 
let csvArray = ["example"] // [String] (required) | 
let ssvArray = ["example"] // [String] (required) | 
let tsvArray = ["example"] // [String] (required) | 
let pipesArray = ["example"] // [String] (required) | 
let multi = ["example"] // [String] (required) | 
let date = Date() // Date (required) | 
let dateTime = Date() // Date (required) | 

QueryParametersAPI.testAllTheThingsQueryParam(string: string, float: float, double: double, integer: integer, long: long, boolean: boolean, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, multi: multi, date: date, dateTime: dateTime) { (result, response, error) in
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


### **testBooleanQueryParam**  {#testBooleanQueryParam}
---
```swift
public static func testBooleanQueryParam(boolean: Bool, completionHandler: (Bool?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **boolean**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Bool?`, `Response?` and  `Error?`

#### Response
**Bool**

### Authentication

No authentication required


### Example

```swift

let boolean = true // Bool (required) | 

QueryParametersAPI.testBooleanQueryParam(boolean: boolean) { (result, response, error) in
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


### **testCSVQueryParam**  {#testCSVQueryParam}
---
```swift
public static func testCSVQueryParam(csvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **csvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let csvArray = ["example"] // [String] (required) | 

QueryParametersAPI.testCSVQueryParam(csvArray: csvArray) { (result, response, error) in
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


### **testDateQueryParam**  {#testDateQueryParam}
---
```swift
public static func testDateQueryParam(date: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **date**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Date?`, `Response?` and  `Error?`

#### Response
[**Date**](Date.md)

### Authentication

No authentication required


### Example

```swift

let date = Date() // Date (required) | 

QueryParametersAPI.testDateQueryParam(date: date) { (result, response, error) in
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


### **testDateTimeQueryParam**  {#testDateTimeQueryParam}
---
```swift
public static func testDateTimeQueryParam(dateTime: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **dateTime**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Date?`, `Response?` and  `Error?`

#### Response
[**Date**](Date.md)

### Authentication

No authentication required


### Example

```swift

let dateTime = Date() // Date (required) | 

QueryParametersAPI.testDateTimeQueryParam(dateTime: dateTime) { (result, response, error) in
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


### **testDoubleQueryParam**  {#testDoubleQueryParam}
---
```swift
public static func testDoubleQueryParam(double: Double, completionHandler: (Double?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **double**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Double?`, `Response?` and  `Error?`

#### Response
**Double**

### Authentication

No authentication required


### Example

```swift

let double = 1.2 // Double (required) | 

QueryParametersAPI.testDoubleQueryParam(double: double) { (result, response, error) in
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


### **testFloatQueryParam**  {#testFloatQueryParam}
---
```swift
public static func testFloatQueryParam(float: Float, completionHandler: (Float?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **float**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Float?`, `Response?` and  `Error?`

#### Response
**Float**

### Authentication

No authentication required


### Example

```swift

let float = 3.4 // Float (required) | 

QueryParametersAPI.testFloatQueryParam(float: float) { (result, response, error) in
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


### **testIntegerQueryParam**  {#testIntegerQueryParam}
---
```swift
public static func testIntegerQueryParam(integer: Int, completionHandler: (Int?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **integer**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Int?`, `Response?` and  `Error?`

#### Response
**Int**

### Authentication

No authentication required


### Example

```swift

let integer = 56 // Int (required) | 

QueryParametersAPI.testIntegerQueryParam(integer: integer) { (result, response, error) in
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


### **testLongQueryParam**  {#testLongQueryParam}
---
```swift
public static func testLongQueryParam(long: Int64, completionHandler: (Int64?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **long**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Int64?`, `Response?` and  `Error?`

#### Response
**Int64**

### Authentication

No authentication required


### Example

```swift

let long = 789 // Int64 (required) | 

QueryParametersAPI.testLongQueryParam(long: long) { (result, response, error) in
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


### **testMultiQueryParam**  {#testMultiQueryParam}
---
```swift
public static func testMultiQueryParam(multi: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **multi**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let multi = ["example"] // [String] (required) | 

QueryParametersAPI.testMultiQueryParam(multi: multi) { (result, response, error) in
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


### **testOptionalQueryParam**  {#testOptionalQueryParam}
---
```swift
public static func testOptionalQueryParam(float: Float, double: Double, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, string: String = xix, integer: Int?, long: Int64 = 17, boolean: Bool?, completionHandler: (QueryModel?, Response?, Error?) -> Void) -> Void
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
    - closure takes as arguments `QueryModel?`, `Response?` and  `Error?`

#### Response
[**QueryModel**](QueryModel.md)

### Authentication

No authentication required


### Example

```swift

let float = 3.4 // Float (required) | 
let double = 1.2 // Double (required) | 
let csvArray = ["example"] // [String] (required) | 
let ssvArray = ["example"] // [String] (required) | 
let tsvArray = ["example"] // [String] (required) | 
let pipesArray = ["example"] // [String] (required) | 
let multi = ["example"] // [String] (required) | 
let date = Date() // Date (required) | 
let dateTime = Date() // Date (required) | 
var string: String? // String? (optional) | 
var integer: Int? // Int? (optional) | 
var long: Int64? // Int64? (optional) | 
var boolean: Bool? // Bool? (optional) | 

QueryParametersAPI.testOptionalQueryParam(float: float, double: double, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, multi: multi, date: date, dateTime: dateTime, string: string, integer: integer, long: long, boolean: boolean) { (result, response, error) in
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


### **testPipesQueryParam**  {#testPipesQueryParam}
---
```swift
public static func testPipesQueryParam(pipesArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **pipesArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let pipesArray = ["example"] // [String] (required) | 

QueryParametersAPI.testPipesQueryParam(pipesArray: pipesArray) { (result, response, error) in
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


### **testSSVQueryParam**  {#testSSVQueryParam}
---
```swift
public static func testSSVQueryParam(ssvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **ssvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let ssvArray = ["example"] // [String] (required) | 

QueryParametersAPI.testSSVQueryParam(ssvArray: ssvArray) { (result, response, error) in
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


### **testStringQueryParam**  {#testStringQueryParam}
---
```swift
public static func testStringQueryParam(string: String, completionHandler: (String?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **string**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `String?`, `Response?` and  `Error?`

#### Response
**String**

### Authentication

No authentication required


### Example

```swift

let string = "string_example" // String (required) | 

QueryParametersAPI.testStringQueryParam(string: string) { (result, response, error) in
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


### **testTSVQueryParam**  {#testTSVQueryParam}
---
```swift
public static func testTSVQueryParam(tsvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **tsvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let tsvArray = ["example"] // [String] (required) | 

QueryParametersAPI.testTSVQueryParam(tsvArray: tsvArray) { (result, response, error) in
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
