

[**Back to README**](./README.md)
# FormModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let jsonString = ""
let formModel: FormModel? = FormModel(JSONString: jsonString)
```
###
```swift
// Maps JSON string to array of FormModel
let jsonString = ""
let formModelArray: [FormModel]? = Mapper<FormModel>().mapArray(JSONString: jsonString)
```
###
```swift
// Maps JSON String to Dictionary mapping String to FormModel
let jsonString = ""
let Dictionary: [String: FormModel]? = Mapper<FormModel>().mapDictionary(JSONString: jsonString)
```
###
```swift
// Converts Swift Object to JSON string
let json: [String: Any] = [:]
let formModel = FormModel(JSON: json)
let jsonString: String? = formModel?.toJSONString(prettyPrint: true)
```

### Fields 
 - [**formString**](#formString)
 - [**formFloat**](#formFloat)
 - [**formDouble**](#formDouble)
 - [**formInteger**](#formInteger)
 - [**formLong**](#formLong)
 - [**formBoolean**](#formBoolean)
 - [**formCSV**](#formCSV)
 - [**formSSV**](#formSSV)
 - [**formTSV**](#formTSV)
 - [**formPipes**](#formPipes)
 - [**formMulti**](#formMulti)
 - [**formDate**](#formDate)
 - [**formDateTime**](#formDateTime)

---


#### formString   {#formString}

```swift
var formString: String?
```

- 

---


#### formFloat   {#formFloat}

```swift
var formFloat: Float?
```

- 

---


#### formDouble   {#formDouble}

```swift
var formDouble: Double?
```

- 

---


#### formInteger   {#formInteger}

```swift
var formInteger: Int?
```

- 

---


#### formLong   {#formLong}

```swift
var formLong: Int64?
```

- 

---


#### formBoolean   {#formBoolean}

```swift
var formBoolean: Bool?
```

- 

---


#### formCSV   {#formCSV}

```swift
var formCSV: [String]?
```

- 

---


#### formSSV   {#formSSV}

```swift
var formSSV: [String]?
```

- 

---


#### formTSV   {#formTSV}

```swift
var formTSV: [String]?
```

- 

---


#### formPipes   {#formPipes}

```swift
var formPipes: [String]?
```

- 

---


#### formMulti   {#formMulti}

```swift
var formMulti: [String]?
```

- 

---


#### formDate   {#formDate}

```swift
var formDate: Date?
```

- 

---


#### formDateTime   {#formDateTime}

```swift
var formDateTime: Date?
```

- 

---


[**Back to Top**](#top)


