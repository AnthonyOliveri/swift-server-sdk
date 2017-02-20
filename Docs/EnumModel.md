

[**Back to README**](./README.md)
# EnumModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let enumModel: EnumModel = EnumModel(JSONString: jsonString)

// Maps JSON string to array of EnumModel
let enumModelArray: [EnumModel] = Mapper<EnumModel>().mapArray(JSONString: jsonString)

// Maps JSON String to Dictionary mapping String to EnumModel
let Dictionary: [String: EnumModel] = Mapper<EnumModel>().mapDictionary(JSONString: jsonString);

// Converts Swift Object to JSON string
let jsonString: String = enumModel.toJSONString(prettyPrint: true)
```

### Fields 
 - [**stringEnum**](#stringEnum)
 - [**floatEnum**](#floatEnum)
 - [**doubleEnum**](#doubleEnum)
 - [**integerEnum**](#integerEnum)
 - [**longEnum**](#longEnum)

---


#### stringEnum   {#stringEnum}

```swift
var stringEnum: stringenum?
```

- ( ***Enum*** ) 
- Values:
    - ``
    - ``

---


#### floatEnum   {#floatEnum}

```swift
var floatEnum: floatenum?
```

- ( ***Enum*** ) 
- Values:
    - ``
    - ``

---


#### doubleEnum   {#doubleEnum}

```swift
var doubleEnum: doubleenum?
```

- ( ***Enum*** ) 
- Values:
    - ``
    - ``

---


#### integerEnum   {#integerEnum}

```swift
var integerEnum: integerenum?
```

- ( ***Enum*** ) 
- Values:
    - ``
    - ``

---


#### longEnum   {#longEnum}

```swift
var longEnum: longenum?
```

- ( ***Enum*** ) 
- Values:
    - ``
    - ``

---


[**Back to Top**](#top)


