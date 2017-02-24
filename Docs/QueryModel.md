

[**Back to README**](./README.md)
# QueryModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let jsonString = ""
let queryModel: QueryModel? = QueryModel(JSONString: jsonString)
```
###
```swift
// Maps JSON string to array of QueryModel
let jsonString = ""
let queryModelArray: [QueryModel]? = Mapper<QueryModel>().mapArray(JSONString: jsonString)
```
###
```swift
// Maps JSON String to Dictionary mapping String to QueryModel
let jsonString = ""
let Dictionary: [String: QueryModel]? = Mapper<QueryModel>().mapDictionary(JSONString: jsonString)
```
###
```swift
// Converts Swift Object to JSON string
let json: [String: Any] = [:]
let queryModel = QueryModel(JSON: json)
let jsonString: String? = queryModel?.toJSONString(prettyPrint: true)
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

---


#### querySSV   {#querySSV}

```swift
var querySSV: [String]?
```

- 

---


#### queryTSV   {#queryTSV}

```swift
var queryTSV: [String]?
```

- 

---


#### queryPipes   {#queryPipes}

```swift
var queryPipes: [String]?
```

- 

---


#### queryMulti   {#queryMulti}

```swift
var queryMulti: [String]?
```

- 

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


