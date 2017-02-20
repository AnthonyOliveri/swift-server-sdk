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
public static func testBodyBooleanParam(boolean: Bool, completionHandler: (Bool?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **boolean**  (required) 
    - see [**Bool**](Bool.md)
- **completionHandler** (required)
    - closure takes as arguments `Bool?`, `Response?` and  `Error?`

#### Response
**Bool**

### Authentication

No authentication required


### Example

```swift

let boolean = true // Bool (required) | 

BodyParametersAPI.testBodyBooleanParam(boolean: boolean) { (result, response, error) in
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


### **testBodyDoubleParam**  {#testBodyDoubleParam}
---
```swift
public static func testBodyDoubleParam(double: Double, completionHandler: (Double?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **double**  (required) 
    - see [**Double**](Double.md)
- **completionHandler** (required)
    - closure takes as arguments `Double?`, `Response?` and  `Error?`

#### Response
**Double**

### Authentication

No authentication required


### Example

```swift

let double = 1.2 // Double (required) | 

BodyParametersAPI.testBodyDoubleParam(double: double) { (result, response, error) in
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


### **testBodyFloatParam**  {#testBodyFloatParam}
---
```swift
public static func testBodyFloatParam(float: Float, completionHandler: (Float?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **float**  (required) 
    - see [**Float**](Float.md)
- **completionHandler** (required)
    - closure takes as arguments `Float?`, `Response?` and  `Error?`

#### Response
**Float**

### Authentication

No authentication required


### Example

```swift

let float = 3.4 // Float (required) | 

BodyParametersAPI.testBodyFloatParam(float: float) { (result, response, error) in
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


### **testBodyIntegerParam**  {#testBodyIntegerParam}
---
```swift
public static func testBodyIntegerParam(integer: Int, completionHandler: (Int?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **integer**  (required) 
    - see [**Int**](Int.md)
- **completionHandler** (required)
    - closure takes as arguments `Int?`, `Response?` and  `Error?`

#### Response
**Int**

### Authentication

No authentication required


### Example

```swift

let integer = 56 // Int (required) | 

BodyParametersAPI.testBodyIntegerParam(integer: integer) { (result, response, error) in
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


### **testBodyLongParam**  {#testBodyLongParam}
---
```swift
public static func testBodyLongParam(long: Int64, completionHandler: (Int64?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **long**  (required) 
    - see [**Int64**](Int64.md)
- **completionHandler** (required)
    - closure takes as arguments `Int64?`, `Response?` and  `Error?`

#### Response
**Int64**

### Authentication

No authentication required


### Example

```swift

let long = 789 // Int64 (required) | 

BodyParametersAPI.testBodyLongParam(long: long) { (result, response, error) in
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


### **testBodyStringParam**  {#testBodyStringParam}
---
```swift
public static func testBodyStringParam(string: String, completionHandler: (String?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **string**  (required) 
    - see [**String**](String.md)
- **completionHandler** (required)
    - closure takes as arguments `String?`, `Response?` and  `Error?`

#### Response
**String**

### Authentication

No authentication required


### Example

```swift

let string = "string_example" // String (required) | 

BodyParametersAPI.testBodyStringParam(string: string) { (result, response, error) in
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


### **testBooleanArrayBodyParam**  {#testBooleanArrayBodyParam}
---
```swift
public static func testBooleanArrayBodyParam(boolean: [Bool], completionHandler: ([Bool]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **boolean**  (required) 
    - see [**[Bool]**](.md)
- **completionHandler** (required)
    - closure takes as arguments `[Bool]?`, `Response?` and  `Error?`

#### Response
**[Bool]**

### Authentication

No authentication required


### Example

```swift

let boolean = [[Bool]()] // [Bool] (required) | 

BodyParametersAPI.testBooleanArrayBodyParam(boolean: boolean) { (result, response, error) in
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


### **testBooleanMapBodyParam**  {#testBooleanMapBodyParam}
---
```swift
public static func testBooleanMapBodyParam(boolean: Any, completionHandler: ([String:Bool]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **boolean**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `[String:Bool]?`, `Response?` and  `Error?`

#### Response
**[String:Bool]**

### Authentication

No authentication required


### Example

```swift

let boolean = nil // Any (required) | 

BodyParametersAPI.testBooleanMapBodyParam(boolean: boolean) { (result, response, error) in
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


### **testDateArrayBodyParam**  {#testDateArrayBodyParam}
---
```swift
public static func testDateArrayBodyParam(date: [Date], completionHandler: ([Date]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **date**  (required) 
    - see [**[Date]**](Date.md)
- **completionHandler** (required)
    - closure takes as arguments `[Date]?`, `Response?` and  `Error?`

#### Response
[**[Date]**](Date.md)

### Authentication

No authentication required


### Example

```swift

let date = [Date()] // [Date] (required) | 

BodyParametersAPI.testDateArrayBodyParam(date: date) { (result, response, error) in
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


### **testDateBodyParam**  {#testDateBodyParam}
---
```swift
public static func testDateBodyParam(date: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **date**  (required) 
    - see [**Date**](Date.md)
- **completionHandler** (required)
    - closure takes as arguments `Date?`, `Response?` and  `Error?`

#### Response
[**Date**](Date.md)

### Authentication

No authentication required


### Example

```swift

let date = Date() // Date (required) | 

BodyParametersAPI.testDateBodyParam(date: date) { (result, response, error) in
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


### **testDateMapBodyParam**  {#testDateMapBodyParam}
---
```swift
public static func testDateMapBodyParam(date: Any, completionHandler: ([String:Date]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **date**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `[String:Date]?`, `Response?` and  `Error?`

#### Response
[**[String:Date]**](Date.md)

### Authentication

No authentication required


### Example

```swift

let date = nil // Any (required) | 

BodyParametersAPI.testDateMapBodyParam(date: date) { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(Mapper<Date>().toJSONString(result, prettyPrint: true))
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


### **testDateTimeArrayBodyParam**  {#testDateTimeArrayBodyParam}
---
```swift
public static func testDateTimeArrayBodyParam(dateTime: [Date], completionHandler: ([Date]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **dateTime**  (required) 
    - see [**[Date]**](Date.md)
- **completionHandler** (required)
    - closure takes as arguments `[Date]?`, `Response?` and  `Error?`

#### Response
[**[Date]**](Date.md)

### Authentication

No authentication required


### Example

```swift

let dateTime = [Date()] // [Date] (required) | 

BodyParametersAPI.testDateTimeArrayBodyParam(dateTime: dateTime) { (result, response, error) in
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


### **testDateTimeBodyParam**  {#testDateTimeBodyParam}
---
```swift
public static func testDateTimeBodyParam(dateTime: Date, completionHandler: (Date?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **dateTime**  (required) 
    - see [**Date**](Date.md)
- **completionHandler** (required)
    - closure takes as arguments `Date?`, `Response?` and  `Error?`

#### Response
[**Date**](Date.md)

### Authentication

No authentication required


### Example

```swift

let dateTime = Date() // Date (required) | 

BodyParametersAPI.testDateTimeBodyParam(dateTime: dateTime) { (result, response, error) in
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


### **testDateTimeMapBodyParam**  {#testDateTimeMapBodyParam}
---
```swift
public static func testDateTimeMapBodyParam(dateTime: Any, completionHandler: ([String:Date]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **dateTime**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `[String:Date]?`, `Response?` and  `Error?`

#### Response
[**[String:Date]**](Date.md)

### Authentication

No authentication required


### Example

```swift

let dateTime = nil // Any (required) | 

BodyParametersAPI.testDateTimeMapBodyParam(dateTime: dateTime) { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(Mapper<Date>().toJSONString(result, prettyPrint: true))
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


### **testDoubleArrayBodyParam**  {#testDoubleArrayBodyParam}
---
```swift
public static func testDoubleArrayBodyParam(double: [Double], completionHandler: ([Double]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **double**  (required) 
    - see [**[Double]**](.md)
- **completionHandler** (required)
    - closure takes as arguments `[Double]?`, `Response?` and  `Error?`

#### Response
**[Double]**

### Authentication

No authentication required


### Example

```swift

let double = [[Double]()] // [Double] (required) | 

BodyParametersAPI.testDoubleArrayBodyParam(double: double) { (result, response, error) in
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


### **testDoubleMapBodyParam**  {#testDoubleMapBodyParam}
---
```swift
public static func testDoubleMapBodyParam(double: Any, completionHandler: ([String:Double]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **double**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `[String:Double]?`, `Response?` and  `Error?`

#### Response
**[String:Double]**

### Authentication

No authentication required


### Example

```swift

let double = nil // Any (required) | 

BodyParametersAPI.testDoubleMapBodyParam(double: double) { (result, response, error) in
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


### **testFloatArrayBodyParam**  {#testFloatArrayBodyParam}
---
```swift
public static func testFloatArrayBodyParam(float: [Float], completionHandler: ([Float]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **float**  (required) 
    - see [**[Float]**](.md)
- **completionHandler** (required)
    - closure takes as arguments `[Float]?`, `Response?` and  `Error?`

#### Response
**[Float]**

### Authentication

No authentication required


### Example

```swift

let float = [[Float]()] // [Float] (required) | 

BodyParametersAPI.testFloatArrayBodyParam(float: float) { (result, response, error) in
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


### **testFloatMapBodyParam**  {#testFloatMapBodyParam}
---
```swift
public static func testFloatMapBodyParam(float: Any, completionHandler: ([String:Float]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **float**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `[String:Float]?`, `Response?` and  `Error?`

#### Response
**[String:Float]**

### Authentication

No authentication required


### Example

```swift

let float = nil // Any (required) | 

BodyParametersAPI.testFloatMapBodyParam(float: float) { (result, response, error) in
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


### **testGenericObject**  {#testGenericObject}
---
```swift
public static func testGenericObject(body: Any, completionHandler: (Any?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **body**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `Any?`, `Response?` and  `Error?`

#### Response
**Any**

### Authentication

No authentication required


### Example

```swift

let body = nil // Any (required) | 

BodyParametersAPI.testGenericObject(body: body) { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result)
    } else  {
        switch response!.statusCode {
    }
}
```


### **testGenericObjectArray**  {#testGenericObjectArray}
---
```swift
public static func testGenericObjectArray(objectArray: Any, completionHandler: (Any?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **objectArray**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `Any?`, `Response?` and  `Error?`

#### Response
**Any**

### Authentication

No authentication required


### Example

```swift

let objectArray = nil // Any (required) | 

BodyParametersAPI.testGenericObjectArray(objectArray: objectArray) { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result)
    } else  {
        switch response!.statusCode {
    }
}
```


### **testGenericObjectMap**  {#testGenericObjectMap}
---
```swift
public static func testGenericObjectMap(objectMap: Any, completionHandler: (Any?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **objectMap**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `Any?`, `Response?` and  `Error?`

#### Response
**Any**

### Authentication

No authentication required


### Example

```swift

let objectMap = nil // Any (required) | 

BodyParametersAPI.testGenericObjectMap(objectMap: objectMap) { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(result)
    } else  {
        switch response!.statusCode {
    }
}
```


### **testIntegerArrayBodyParam**  {#testIntegerArrayBodyParam}
---
```swift
public static func testIntegerArrayBodyParam(integer: [Int], completionHandler: ([Int]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **integer**  (required) 
    - see [**[Int]**](.md)
- **completionHandler** (required)
    - closure takes as arguments `[Int]?`, `Response?` and  `Error?`

#### Response
**[Int]**

### Authentication

No authentication required


### Example

```swift

let integer = [[Int]()] // [Int] (required) | 

BodyParametersAPI.testIntegerArrayBodyParam(integer: integer) { (result, response, error) in
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


### **testIntegerMapBodyParam**  {#testIntegerMapBodyParam}
---
```swift
public static func testIntegerMapBodyParam(integer: Any, completionHandler: ([String:Int]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **integer**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `[String:Int]?`, `Response?` and  `Error?`

#### Response
**[String:Int]**

### Authentication

No authentication required


### Example

```swift

let integer = nil // Any (required) | 

BodyParametersAPI.testIntegerMapBodyParam(integer: integer) { (result, response, error) in
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


### **testLongArrayBodyParam**  {#testLongArrayBodyParam}
---
```swift
public static func testLongArrayBodyParam(long: [Int64], completionHandler: ([Int64]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **long**  (required) 
    - see [**[Int64]**](.md)
- **completionHandler** (required)
    - closure takes as arguments `[Int64]?`, `Response?` and  `Error?`

#### Response
**[Int64]**

### Authentication

No authentication required


### Example

```swift

let long = [[Int64]()] // [Int64] (required) | 

BodyParametersAPI.testLongArrayBodyParam(long: long) { (result, response, error) in
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


### **testLongMapBodyParam**  {#testLongMapBodyParam}
---
```swift
public static func testLongMapBodyParam(long: Any, completionHandler: ([String:Int64]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **long**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `[String:Int64]?`, `Response?` and  `Error?`

#### Response
**[String:Int64]**

### Authentication

No authentication required


### Example

```swift

let long = nil // Any (required) | 

BodyParametersAPI.testLongMapBodyParam(long: long) { (result, response, error) in
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


### **testModelArrayBodyParam**  {#testModelArrayBodyParam}
---
```swift
public static func testModelArrayBodyParam(modelArray: [BodyModel], completionHandler: ([BodyModel]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **modelArray**  (required) 
    - see [**[BodyModel]**](BodyModel.md)
- **completionHandler** (required)
    - closure takes as arguments `[BodyModel]?`, `Response?` and  `Error?`

#### Response
[**[BodyModel]**](BodyModel.md)

### Authentication

No authentication required


### Example

```swift

let modelArray = [BodyModel()] // [BodyModel] (required) | 

BodyParametersAPI.testModelArrayBodyParam(modelArray: modelArray) { (result, response, error) in
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


### **testModelBodyParam**  {#testModelBodyParam}
---
```swift
public static func testModelBodyParam(model: BodyModel, completionHandler: (BodyModel?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **model**  (required) 
    - see [**BodyModel**](BodyModel.md)
- **completionHandler** (required)
    - closure takes as arguments `BodyModel?`, `Response?` and  `Error?`

#### Response
[**BodyModel**](BodyModel.md)

### Authentication

No authentication required


### Example

```swift

let model = BodyModel() // BodyModel (required) | 

BodyParametersAPI.testModelBodyParam(model: model) { (result, response, error) in
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


### **testModelMapBodyParam**  {#testModelMapBodyParam}
---
```swift
public static func testModelMapBodyParam(modelMap: Any, completionHandler: ([String:BodyModel]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **modelMap**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `[String:BodyModel]?`, `Response?` and  `Error?`

#### Response
[**[String:BodyModel]**](BodyModel.md)

### Authentication

No authentication required


### Example

```swift

let modelMap = nil // Any (required) | 

BodyParametersAPI.testModelMapBodyParam(modelMap: modelMap) { (result, response, error) in
    if let error = error {
        print(error)
    }
    if let result = result {
        print(Mapper<BodyModel>().toJSONString(result, prettyPrint: true))
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


### **testStringArrayBodyParam**  {#testStringArrayBodyParam}
---
```swift
public static func testStringArrayBodyParam(string: [String], completionHandler: ([String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **string**  (required) 
    - see [**[String]**](.md)
- **completionHandler** (required)
    - closure takes as arguments `[String]?`, `Response?` and  `Error?`

#### Response
**[String]**

### Authentication

No authentication required


### Example

```swift

let string = [[String]()] // [String] (required) | 

BodyParametersAPI.testStringArrayBodyParam(string: string) { (result, response, error) in
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


### **testStringMapBodyParam**  {#testStringMapBodyParam}
---
```swift
public static func testStringMapBodyParam(string: Any, completionHandler: ([String:String]?, Response?, Error?) -> Void) -> Void
```

>

#### Parameters

- **string**  (required) 
    - see [**Any**](Any.md)
- **completionHandler** (required)
    - closure takes as arguments `[String:String]?`, `Response?` and  `Error?`

#### Response
**[String:String]**

### Authentication

No authentication required


### Example

```swift

let string = nil // Any (required) | 

BodyParametersAPI.testStringMapBodyParam(string: string) { (result, response, error) in
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
