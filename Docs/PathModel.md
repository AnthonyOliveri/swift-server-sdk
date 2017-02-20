

[**Back to README**](./README.md)
# PathModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let pathModel: PathModel = PathModel(JSONString: jsonString)

// Maps JSON string to array of PathModel
let pathModelArray: [PathModel] = Mapper<PathModel>().mapArray(JSONString: jsonString)

// Maps JSON String to Dictionary mapping String to PathModel
let Dictionary: [String: PathModel] = Mapper<PathModel>().mapDictionary(JSONString: jsonString);

// Converts Swift Object to JSON string
let jsonString: String = pathModel.toJSONString(prettyPrint: true)
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
 - see [****](.md)

---


#### pathSSV   {#pathSSV}

```swift
var pathSSV: [String]?
```

- 
 - see [****](.md)

---


#### pathTSV   {#pathTSV}

```swift
var pathTSV: [String]?
```

- 
 - see [****](.md)

---


#### pathPipes   {#pathPipes}

```swift
var pathPipes: [String]?
```

- 
 - see [****](.md)

---


[**Back to Top**](#top)


