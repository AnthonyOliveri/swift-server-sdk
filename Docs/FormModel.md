

[**Back to README**](./README.md)
# FormModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let formModel: FormModel = FormModel(JSONString: jsonString)

// Maps JSON string to array of FormModel
let formModelArray: [FormModel] = Mapper<FormModel>().mapArray(JSONString: jsonString)

// Maps JSON String to Dictionary mapping String to FormModel
let Dictionary: [String: FormModel] = Mapper<FormModel>().mapDictionary(JSONString: jsonString);

// Converts Swift Object to JSON string
let jsonString: String = formModel.toJSONString(prettyPrint: true)
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
 - see [****](.md)

---


#### formSSV   {#formSSV}

```swift
var formSSV: [String]?
```

- 
 - see [****](.md)

---


#### formTSV   {#formTSV}

```swift
var formTSV: [String]?
```

- 
 - see [****](.md)

---


#### formPipes   {#formPipes}

```swift
var formPipes: [String]?
```

- 
 - see [****](.md)

---


#### formMulti   {#formMulti}

```swift
var formMulti: [String]?
```

- 
 - see [****](.md)

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


