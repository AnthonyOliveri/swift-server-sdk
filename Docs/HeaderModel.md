

[**Back to README**](./README.md)
# HeaderModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let headerModel: HeaderModel = HeaderModel(JSONString: jsonString)

// Maps JSON string to array of HeaderModel
let headerModelArray: [HeaderModel] = Mapper<HeaderModel>().mapArray(JSONString: jsonString)

// Maps JSON String to Dictionary mapping String to HeaderModel
let Dictionary: [String: HeaderModel] = Mapper<HeaderModel>().mapDictionary(JSONString: jsonString);

// Converts Swift Object to JSON string
let jsonString: String = headerModel.toJSONString(prettyPrint: true)
```

### Fields 
 - [**headerString**](#headerString)
 - [**headerFloat**](#headerFloat)
 - [**headerDouble**](#headerDouble)
 - [**headerInteger**](#headerInteger)
 - [**headerLong**](#headerLong)
 - [**headerBoolean**](#headerBoolean)
 - [**headerCSV**](#headerCSV)
 - [**headerSSV**](#headerSSV)
 - [**headerTSV**](#headerTSV)
 - [**headerPipes**](#headerPipes)
 - [**headerDate**](#headerDate)
 - [**headerDateTime**](#headerDateTime)

---


#### headerString   {#headerString}

```swift
var headerString: String?
```

- 

---


#### headerFloat   {#headerFloat}

```swift
var headerFloat: Float?
```

- 

---


#### headerDouble   {#headerDouble}

```swift
var headerDouble: Double?
```

- 

---


#### headerInteger   {#headerInteger}

```swift
var headerInteger: Int?
```

- 

---


#### headerLong   {#headerLong}

```swift
var headerLong: Int64?
```

- 

---


#### headerBoolean   {#headerBoolean}

```swift
var headerBoolean: Bool?
```

- 

---


#### headerCSV   {#headerCSV}

```swift
var headerCSV: [String]?
```

- 
 - see [****](.md)

---


#### headerSSV   {#headerSSV}

```swift
var headerSSV: [String]?
```

- 
 - see [****](.md)

---


#### headerTSV   {#headerTSV}

```swift
var headerTSV: [String]?
```

- 
 - see [****](.md)

---


#### headerPipes   {#headerPipes}

```swift
var headerPipes: [String]?
```

- 
 - see [****](.md)

---


#### headerDate   {#headerDate}

```swift
var headerDate: Date?
```

- 

---


#### headerDateTime   {#headerDateTime}

```swift
var headerDateTime: Date?
```

- 

---


[**Back to Top**](#top)


