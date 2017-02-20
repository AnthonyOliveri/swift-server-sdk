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
public static func testAllTheThingsFormData(string: String, float: Float, double: Double, integer: Int, long: Int64, boolean: Bool, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, completionHandler: (FormModel?, Response?, Error?) -> Void) -> Void
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
    - closure takes as arguments `FormModel?`, `Response?` and  `Error?`

#### Response
[**FormModel**](FormModel.md)

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

FormParametersAPI.testAllTheThingsFormData(string: string, float: float, double: double, integer: integer, long: long, boolean: boolean, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, multi: multi, date: date, dateTime: dateTime) { (result, response, error) in
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


### **testAllTheThingsUrlEncoded**  {#testAllTheThingsUrlEncoded}
---
```swift
public static func testAllTheThingsUrlEncoded(string: String, float: Float, double: Double, integer: Int, long: Int64, boolean: Bool, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], date: Date, dateTime: Date, completionHandler: (FormModel?, Response?, Error?) -> Void) -> Void
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
    - closure takes as arguments `FormModel?`, `Response?` and  `Error?`

#### Response
[**FormModel**](FormModel.md)

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
let date = Date() // Date (required) | 
let dateTime = Date() // Date (required) | 

FormParametersAPI.testAllTheThingsUrlEncoded(string: string, float: float, double: double, integer: integer, long: long, boolean: boolean, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, date: date, dateTime: dateTime) { (result, response, error) in
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


### **testBinaryFormData**  {#testBinaryFormData}
---
```swift
public static func testBinaryFormData(binary: Data, completionHandler: (Data?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **binary**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Data?`, `Response?` and  `Error?`

#### Response
[**Data**](Data.md)

### Authentication

No authentication required


### Example

```swift

let binary = Data() // Data (required) | 

FormParametersAPI.testBinaryFormData(binary: binary) { (result, response, error) in
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


### **testBinaryUrlEncoded**  {#testBinaryUrlEncoded}
---
```swift
public static func testBinaryUrlEncoded(binary: Data, completionHandler: (Data?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **binary**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Data?`, `Response?` and  `Error?`

#### Response
[**Data**](Data.md)

### Authentication

No authentication required


### Example

```swift

let binary = Data() // Data (required) | 

FormParametersAPI.testBinaryUrlEncoded(binary: binary) { (result, response, error) in
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


### **testBooleanFormData**  {#testBooleanFormData}
---
```swift
public static func testBooleanFormData(boolean: Bool, completionHandler: (Bool?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testBooleanFormData(boolean: boolean) { (result, response, error) in
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


### **testBooleanUrlEncoded**  {#testBooleanUrlEncoded}
---
```swift
public static func testBooleanUrlEncoded(boolean: Bool, completionHandler: (Bool?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testBooleanUrlEncoded(boolean: boolean) { (result, response, error) in
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


### **testByteFormData**  {#testByteFormData}
---
```swift
public static func testByteFormData(byte: Data, completionHandler: (Data?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **byte**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Data?`, `Response?` and  `Error?`

#### Response
[**Data**](Data.md)

### Authentication

No authentication required


### Example

```swift

let byte = Data() // Data (required) | 

FormParametersAPI.testByteFormData(byte: byte) { (result, response, error) in
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


### **testByteUrlEncoded**  {#testByteUrlEncoded}
---
```swift
public static func testByteUrlEncoded(byte: Data, completionHandler: (Data?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **byte**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `Data?`, `Response?` and  `Error?`

#### Response
[**Data**](Data.md)

### Authentication

No authentication required


### Example

```swift

let byte = Data() // Data (required) | 

FormParametersAPI.testByteUrlEncoded(byte: byte) { (result, response, error) in
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


### **testCSVFormData**  {#testCSVFormData}
---
```swift
public static func testCSVFormData(csvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testCSVFormData(csvArray: csvArray) { (result, response, error) in
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


### **testCSVUrlEncoded**  {#testCSVUrlEncoded}
---
```swift
public static func testCSVUrlEncoded(csvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testCSVUrlEncoded(csvArray: csvArray) { (result, response, error) in
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


### **testDateFormData**  {#testDateFormData}
---
```swift
public static func testDateFormData(date: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testDateFormData(date: date) { (result, response, error) in
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


### **testDateTimeFormData**  {#testDateTimeFormData}
---
```swift
public static func testDateTimeFormData(dateTime: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testDateTimeFormData(dateTime: dateTime) { (result, response, error) in
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


### **testDateTimeUrlEncoded**  {#testDateTimeUrlEncoded}
---
```swift
public static func testDateTimeUrlEncoded(dateTime: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testDateTimeUrlEncoded(dateTime: dateTime) { (result, response, error) in
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


### **testDateUrlEncoded**  {#testDateUrlEncoded}
---
```swift
public static func testDateUrlEncoded(date: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testDateUrlEncoded(date: date) { (result, response, error) in
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


### **testDoubleFormData**  {#testDoubleFormData}
---
```swift
public static func testDoubleFormData(double: Double, completionHandler: (Double?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testDoubleFormData(double: double) { (result, response, error) in
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


### **testDoubleUrlEncoded**  {#testDoubleUrlEncoded}
---
```swift
public static func testDoubleUrlEncoded(double: Double, completionHandler: (Double?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testDoubleUrlEncoded(double: double) { (result, response, error) in
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


### **testFileFormData**  {#testFileFormData}
---
```swift
public static func testFileFormData(file: URL, completionHandler: (URL?, Response?, Error?) -> Void) throws -> Void
```

>

#### Parameters

- **file**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `URL?`, `Response?` and  `Error?`

#### Response
[**URL**](URL.md)

### Authentication

No authentication required


### Example

```swift

let file = URL(string: "/path/to/file.txt") // URL (required) | 

try FormParametersAPI.testFileFormData(file: file) { (result, response, error) in
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


### **testFileUrlEncoded**  {#testFileUrlEncoded}
---
```swift
public static func testFileUrlEncoded(file: URL, completionHandler: (URL?, Response?, Error?) -> Void) throws -> Void
```

>

#### Parameters

- **file**  (required) 
- **completionHandler** (required)
    - closure takes as arguments `URL?`, `Response?` and  `Error?`

#### Response
[**URL**](URL.md)

### Authentication

No authentication required


### Example

```swift

let file = URL(string: "/path/to/file.txt") // URL (required) | 

try FormParametersAPI.testFileUrlEncoded(file: file) { (result, response, error) in
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


### **testFloatFormData**  {#testFloatFormData}
---
```swift
public static func testFloatFormData(float: Float, completionHandler: (Float?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testFloatFormData(float: float) { (result, response, error) in
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


### **testFloatUrlEncoded**  {#testFloatUrlEncoded}
---
```swift
public static func testFloatUrlEncoded(float: Float, completionHandler: (Float?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testFloatUrlEncoded(float: float) { (result, response, error) in
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


### **testIntegerFormData**  {#testIntegerFormData}
---
```swift
public static func testIntegerFormData(integer: Int, completionHandler: (Int?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testIntegerFormData(integer: integer) { (result, response, error) in
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


### **testIntegerUrlEncoded**  {#testIntegerUrlEncoded}
---
```swift
public static func testIntegerUrlEncoded(integer: Int, completionHandler: (Int?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testIntegerUrlEncoded(integer: integer) { (result, response, error) in
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


### **testLongFormData**  {#testLongFormData}
---
```swift
public static func testLongFormData(long: Int64, completionHandler: (Int64?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testLongFormData(long: long) { (result, response, error) in
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


### **testLongUrlEncoded**  {#testLongUrlEncoded}
---
```swift
public static func testLongUrlEncoded(long: Int64, completionHandler: (Int64?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testLongUrlEncoded(long: long) { (result, response, error) in
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


### **testMultiFormData**  {#testMultiFormData}
---
```swift
public static func testMultiFormData(multi: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testMultiFormData(multi: multi) { (result, response, error) in
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


### **testMultiUrlEncoded**  {#testMultiUrlEncoded}
---
```swift
public static func testMultiUrlEncoded(multi: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testMultiUrlEncoded(multi: multi) { (result, response, error) in
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


### **testOptionalsFormData**  {#testOptionalsFormData}
---
```swift
public static func testOptionalsFormData(float: Float, double: Double, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], multi: [String], date: Date, dateTime: Date, string: String?, integer: Int?, long: Int64?, boolean: Bool = false, completionHandler: (FormModel?, Response?, Error?) -> Void) -> Void
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
    - closure takes as arguments `FormModel?`, `Response?` and  `Error?`

#### Response
[**FormModel**](FormModel.md)

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

FormParametersAPI.testOptionalsFormData(float: float, double: double, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, multi: multi, date: date, dateTime: dateTime, string: string, integer: integer, long: long, boolean: boolean) { (result, response, error) in
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


### **testOptionalsUrlEncoded**  {#testOptionalsUrlEncoded}
---
```swift
public static func testOptionalsUrlEncoded(float: Float, double: Double, csvArray: [String], ssvArray: [String], tsvArray: [String], pipesArray: [String], date: Date, dateTime: Date, string: String?, integer: Int?, long: Int64?, boolean: Bool = false, completionHandler: (FormModel?, Response?, Error?) -> Void) -> Void
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
    - closure takes as arguments `FormModel?`, `Response?` and  `Error?`

#### Response
[**FormModel**](FormModel.md)

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
let date = Date() // Date (required) | 
let dateTime = Date() // Date (required) | 
var string: String? // String? (optional) | 
var integer: Int? // Int? (optional) | 
var long: Int64? // Int64? (optional) | 
var boolean: Bool? // Bool? (optional) | 

FormParametersAPI.testOptionalsUrlEncoded(float: float, double: double, csvArray: csvArray, ssvArray: ssvArray, tsvArray: tsvArray, pipesArray: pipesArray, date: date, dateTime: dateTime, string: string, integer: integer, long: long, boolean: boolean) { (result, response, error) in
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


### **testPipesFormData**  {#testPipesFormData}
---
```swift
public static func testPipesFormData(pipesArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testPipesFormData(pipesArray: pipesArray) { (result, response, error) in
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


### **testPipesUrlEncoded**  {#testPipesUrlEncoded}
---
```swift
public static func testPipesUrlEncoded(pipesArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testPipesUrlEncoded(pipesArray: pipesArray) { (result, response, error) in
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


### **testSSVFormData**  {#testSSVFormData}
---
```swift
public static func testSSVFormData(ssvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testSSVFormData(ssvArray: ssvArray) { (result, response, error) in
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


### **testSSVUrlEncoded**  {#testSSVUrlEncoded}
---
```swift
public static func testSSVUrlEncoded(ssvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testSSVUrlEncoded(ssvArray: ssvArray) { (result, response, error) in
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


### **testStringFormData**  {#testStringFormData}
---
```swift
public static func testStringFormData(string: String, completionHandler: (String?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testStringFormData(string: string) { (result, response, error) in
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


### **testStringUrlEncoded**  {#testStringUrlEncoded}
---
```swift
public static func testStringUrlEncoded(string: String, completionHandler: (String?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testStringUrlEncoded(string: string) { (result, response, error) in
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


### **testTSVFormData**  {#testTSVFormData}
---
```swift
public static func testTSVFormData(tsvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testTSVFormData(tsvArray: tsvArray) { (result, response, error) in
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


### **testTSVUrlEncoded**  {#testTSVUrlEncoded}
---
```swift
public static func testTSVUrlEncoded(tsvArray: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
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

FormParametersAPI.testTSVUrlEncoded(tsvArray: tsvArray) { (result, response, error) in
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
