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
 * [**testTSVHeaderParam**](#testTSVHeaderParam)


### **testAllTheThingsHeaderParam**  {#testAllTheThingsHeaderParam}
---
```swift
public static func testAllTheThingsHeaderParam(xString: String, xFloat: Float, xDouble: Double, xInteger: Int, xLong: Int64, xBoolean: Bool, xCsvArray: [String], xSsvArray: [String], xTsvArray: [String], xPipesArray: [String], date: Date, dateTime: Date, completionHandler: (HeaderModel?, Response?, Error?) -> Void) -> Void
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
    - closure takes as arguments `HeaderModel?`, `Response?` and  `Error?`

#### Response
[**HeaderModel**](HeaderModel.md)

### Authentication

No authentication required


### Example

```swift

let xString = "xString_example" // String (required) | 
let xFloat = 3.4 // Float (required) | 
let xDouble = 1.2 // Double (required) | 
let xInteger = 56 // Int (required) | 
let xLong = 789 // Int64 (required) | 
let xBoolean = true // Bool (required) | 
let xCsvArray = ["example"] // [String] (required) | 
let xSsvArray = ["example"] // [String] (required) | 
let xTsvArray = ["example"] // [String] (required) | 
let xPipesArray = ["example"] // [String] (required) | 
let date = Date() // Date (required) | 
let dateTime = Date() // Date (required) | 

HeaderParametersAPI.testAllTheThingsHeaderParam(xString: xString, xFloat: xFloat, xDouble: xDouble, xInteger: xInteger, xLong: xLong, xBoolean: xBoolean, xCsvArray: xCsvArray, xSsvArray: xSsvArray, xTsvArray: xTsvArray, xPipesArray: xPipesArray, date: date, dateTime: dateTime) { (result, response, error) in
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
public static func testBooleanHeaderParam(xBoolean: Bool, completionHandler: (Bool?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **xBoolean**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Bool?`, `Response?` and  `Error?`

#### Response
**Bool**

### Authentication

No authentication required


### Example

```swift

let xBoolean = true // Bool (required) | 

HeaderParametersAPI.testBooleanHeaderParam(xBoolean: xBoolean) { (result, response, error) in
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
public static func testCSVHeaderParam(xCsvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **xCsvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let xCsvArray = ["example"] // [String] (required) | 

HeaderParametersAPI.testCSVHeaderParam(xCsvArray: xCsvArray) { (result, response, error) in
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
public static func testDateHeaderParam(date: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
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

HeaderParametersAPI.testDateHeaderParam(date: date) { (result, response, error) in
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
public static func testDateTimeHeaderParam(dateTime: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
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

HeaderParametersAPI.testDateTimeHeaderParam(dateTime: dateTime) { (result, response, error) in
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
public static func testDoubleHeaderParam(xDouble: Double, completionHandler: (Double?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **xDouble**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Double?`, `Response?` and  `Error?`

#### Response
**Double**

### Authentication

No authentication required


### Example

```swift

let xDouble = 1.2 // Double (required) | 

HeaderParametersAPI.testDoubleHeaderParam(xDouble: xDouble) { (result, response, error) in
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
public static func testFloatHeaderParam(xFloat: Float, completionHandler: (Float?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **xFloat**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Float?`, `Response?` and  `Error?`

#### Response
**Float**

### Authentication

No authentication required


### Example

```swift

let xFloat = 3.4 // Float (required) | 

HeaderParametersAPI.testFloatHeaderParam(xFloat: xFloat) { (result, response, error) in
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
public static func testIntegerHeaderParam(xInteger: Int, completionHandler: (Int?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **xInteger**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Int?`, `Response?` and  `Error?`

#### Response
**Int**

### Authentication

No authentication required


### Example

```swift

let xInteger = 56 // Int (required) | 

HeaderParametersAPI.testIntegerHeaderParam(xInteger: xInteger) { (result, response, error) in
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
public static func testLongHeaderParam(xLong: Int64, completionHandler: (Int64?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **xLong**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Int64?`, `Response?` and  `Error?`

#### Response
**Int64**

### Authentication

No authentication required


### Example

```swift

let xLong = 789 // Int64 (required) | 

HeaderParametersAPI.testLongHeaderParam(xLong: xLong) { (result, response, error) in
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
public static func testOptionalHeaderParam(xFloat: Float, xDouble: Double, xCsvArray: [String], xSsvArray: [String], xTsvArray: [String], xPipesArray: [String], date: Date, dateTime: Date, xString: String?, xInteger: Int = 17, xLong: Int64?, xBoolean: Bool = false, completionHandler: (HeaderModel?, Response?, Error?) -> Void) -> Void
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
    - closure takes as arguments `HeaderModel?`, `Response?` and  `Error?`

#### Response
[**HeaderModel**](HeaderModel.md)

### Authentication

No authentication required


### Example

```swift

let xFloat = 3.4 // Float (required) | 
let xDouble = 1.2 // Double (required) | 
let xCsvArray = ["example"] // [String] (required) | 
let xSsvArray = ["example"] // [String] (required) | 
let xTsvArray = ["example"] // [String] (required) | 
let xPipesArray = ["example"] // [String] (required) | 
let date = Date() // Date (required) | 
let dateTime = Date() // Date (required) | 
var xString: String? // String? (optional) | 
var xInteger: Int? // Int? (optional) | 
var xLong: Int64? // Int64? (optional) | 
var xBoolean: Bool? // Bool? (optional) | 

HeaderParametersAPI.testOptionalHeaderParam(xFloat: xFloat, xDouble: xDouble, xCsvArray: xCsvArray, xSsvArray: xSsvArray, xTsvArray: xTsvArray, xPipesArray: xPipesArray, date: date, dateTime: dateTime, xString: xString, xInteger: xInteger, xLong: xLong, xBoolean: xBoolean) { (result, response, error) in
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
public static func testPipesHeaderParam(xPipesArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **xPipesArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let xPipesArray = ["example"] // [String] (required) | 

HeaderParametersAPI.testPipesHeaderParam(xPipesArray: xPipesArray) { (result, response, error) in
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
public static func testSSVHeaderParam(xSsvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **xSsvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let xSsvArray = ["example"] // [String] (required) | 

HeaderParametersAPI.testSSVHeaderParam(xSsvArray: xSsvArray) { (result, response, error) in
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


### **testTSVHeaderParam**  {#testTSVHeaderParam}
---
```swift
public static func testTSVHeaderParam(xTsvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **xTsvArray**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let xTsvArray = ["example"] // [String] (required) | 

HeaderParametersAPI.testTSVHeaderParam(xTsvArray: xTsvArray) { (result, response, error) in
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
