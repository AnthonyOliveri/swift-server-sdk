

[**Back to README**](./README.md)
# PathModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let jsonString = ""
let pathModel: PathModel? = PathModel(JSONString: jsonString)
```
###
```swift
// Maps JSON string to array of PathModel
let jsonString = ""
let pathModelArray: [PathModel]? = Mapper<PathModel>().mapArray(JSONString: jsonString)
```
###
```swift
// Maps JSON String to Dictionary mapping String to PathModel
let jsonString = ""
let Dictionary: [String: PathModel]? = Mapper<PathModel>().mapDictionary(JSONString: jsonString)
```
###
```swift
// Converts Swift Object to JSON string
let json: [String: Any] = [:]
let pathModel = PathModel(JSON: json)
let jsonString: String? = pathModel?.toJSONString(prettyPrint: true)
```

### Fields 
 - [**pathString**](#pathString)
 - [**pathFloat**](#pathFloat)
 - [**pathDouble**](#pathDouble)
 - [**pathInteger**](#pathInteger)
 - [**pathLong**](#pathLong)
 - [**pathBoolean**](#pathBoolean)
 - [**pathCSV**](#pathCSV)
 - [**pathSSV**](#pathSSV)
 - [**pathTSV**](#pathTSV)
 - [**pathPipes**](#pathPipes)

---


#### pathString   {#pathString}

```swift
var pathString: String?
```

- 

---


#### pathFloat   {#pathFloat}

```swift
var pathFloat: Float?
```

- 

---


#### pathDouble   {#pathDouble}

```swift
var pathDouble: Double?
```

- 

---


#### pathInteger   {#pathInteger}

```swift
var pathInteger: Int?
```

- 

---


#### pathLong   {#pathLong}

```swift
var pathLong: Int64?
```

- 

---


#### pathBoolean   {#pathBoolean}

```swift
var pathBoolean: Bool?
```

- 

---


#### pathCSV   {#pathCSV}

```swift
var pathCSV: [String]?
```

- 

---


#### pathSSV   {#pathSSV}

```swift
var pathSSV: [String]?
```

- 

---


#### pathTSV   {#pathTSV}

```swift
var pathTSV: [String]?
```

- 

---


#### pathPipes   {#pathPipes}

```swift
var pathPipes: [String]?
```

- 

---


[**Back to Top**](#top)


