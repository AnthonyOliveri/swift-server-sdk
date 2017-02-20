

[**Back to README**](./README.md)
# QueryModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let queryModel: QueryModel = QueryModel(JSONString: jsonString)

// Maps JSON string to array of QueryModel
let queryModelArray: [QueryModel] = Mapper<QueryModel>().mapArray(JSONString: jsonString)

// Maps JSON String to Dictionary mapping String to QueryModel
let Dictionary: [String: QueryModel] = Mapper<QueryModel>().mapDictionary(JSONString: jsonString);

// Converts Swift Object to JSON string
let jsonString: String = queryModel.toJSONString(prettyPrint: true)
```

### Fields 
 - [**queryString**](#queryString)
 - [**queryFloat**](#queryFloat)
 - [**queryDouble**](#queryDouble)
 - [**queryInteger**](#queryInteger)
 - [**queryLong**](#queryLong)
 - [**queryBoolean**](#queryBoolean)
 - [**queryCSV**](#queryCSV)
 - [**querySSV**](#querySSV)
 - [**queryTSV**](#queryTSV)
 - [**queryPipes**](#queryPipes)
 - [**queryMulti**](#queryMulti)
 - [**queryDate**](#queryDate)
 - [**queryDateTime**](#queryDateTime)

---


#### queryString   {#queryString}

```swift
var queryString: String?
```

- 

---


#### queryFloat   {#queryFloat}

```swift
var queryFloat: Float?
```

- 

---


#### queryDouble   {#queryDouble}

```swift
var queryDouble: Double?
```

- 

---


#### queryInteger   {#queryInteger}

```swift
var queryInteger: Int?
```

- 

---


#### queryLong   {#queryLong}

```swift
var queryLong: Int64?
```

- 

---


#### queryBoolean   {#queryBoolean}

```swift
var queryBoolean: Bool?
```

- 

---


#### queryCSV   {#queryCSV}

```swift
var queryCSV: [String]?
```

- 
 - see [****](.md)

---


#### querySSV   {#querySSV}

```swift
var querySSV: [String]?
```

- 
 - see [****](.md)

---


#### queryTSV   {#queryTSV}

```swift
var queryTSV: [String]?
```

- 
 - see [****](.md)

---


#### queryPipes   {#queryPipes}

```swift
var queryPipes: [String]?
```

- 
 - see [****](.md)

---


#### queryMulti   {#queryMulti}

```swift
var queryMulti: [String]?
```

- 
 - see [****](.md)

---


#### queryDate   {#queryDate}

```swift
var queryDate: Date?
```

- 

---


#### queryDateTime   {#queryDateTime}

```swift
var queryDateTime: Date?
```

- 

---


[**Back to Top**](#top)


