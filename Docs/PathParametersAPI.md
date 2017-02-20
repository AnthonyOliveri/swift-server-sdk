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
public static func testAllTheThingsPathParam(string: String, float: Float, double: Double, integer: Int, long: Int64, boolean: Bool, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], completionHandler: (PathModel?, Response?, Error?) -> Void) -> Void
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
    - closure takes as arguments `PathModel?`, `Response?` and  `Error?`

#### Response
[**PathModel**](PathModel.md)

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

PathParametersAPI.testAllTheThingsPathParam(string: string, float: float, double: double, integer: integer, long: long, boolean: boolean, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray) { (result, response, error) in
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


### **testBooleanPathParam**  {#testBooleanPathParam}
---
```swift
public static func testBooleanPathParam(boolean: Bool, completionHandler: (Bool?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testBooleanPathParam(boolean: boolean) { (result, response, error) in
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


### **testCSVPathParam**  {#testCSVPathParam}
---
```swift
public static func testCSVPathParam(csvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testCSVPathParam(csvArray: csvArray) { (result, response, error) in
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


### **testDoublePathParam**  {#testDoublePathParam}
---
```swift
public static func testDoublePathParam(double: Double, completionHandler: (Double?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testDoublePathParam(double: double) { (result, response, error) in
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


### **testFloatPathParam**  {#testFloatPathParam}
---
```swift
public static func testFloatPathParam(float: Float, completionHandler: (Float?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testFloatPathParam(float: float) { (result, response, error) in
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


### **testIntegerPathParam**  {#testIntegerPathParam}
---
```swift
public static func testIntegerPathParam(integer: Int, completionHandler: (Int?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testIntegerPathParam(integer: integer) { (result, response, error) in
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


### **testLongPathParam**  {#testLongPathParam}
---
```swift
public static func testLongPathParam(long: Int64, completionHandler: (Int64?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testLongPathParam(long: long) { (result, response, error) in
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


### **testPipesPathParam**  {#testPipesPathParam}
---
```swift
public static func testPipesPathParam(pipesArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testPipesPathParam(pipesArray: pipesArray) { (result, response, error) in
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


### **testSSVPathParam**  {#testSSVPathParam}
---
```swift
public static func testSSVPathParam(ssvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testSSVPathParam(ssvArray: ssvArray) { (result, response, error) in
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


### **testStringPathParam**  {#testStringPathParam}
---
```swift
public static func testStringPathParam(string: String, completionHandler: (String?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testStringPathParam(string: string) { (result, response, error) in
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


### **testTSVPathParam**  {#testTSVPathParam}
---
```swift
public static func testTSVPathParam(tsvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

PathParametersAPI.testTSVPathParam(tsvArray: tsvArray) { (result, response, error) in
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
