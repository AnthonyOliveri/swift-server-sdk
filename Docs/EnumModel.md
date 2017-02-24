

[**Back to README**](./README.md)
# EnumModel {#top} 
### Examples
```swift
// Maps JSON string to Swift Object
let jsonString = ""
let enumModel: EnumModel? = EnumModel(JSONString: jsonString)
```
###
```swift
// Maps JSON string to array of EnumModel
let jsonString = ""
let enumModelArray: [EnumModel]? = Mapper<EnumModel>().mapArray(JSONString: jsonString)
```
###
```swift
// Maps JSON String to Dictionary mapping String to EnumModel
let jsonString = ""
let Dictionary: [String: EnumModel]? = Mapper<EnumModel>().mapDictionary(JSONString: jsonString)
```
###
```swift
// Converts Swift Object to JSON string
let json: [String: Any] = [:]
let enumModel = EnumModel(JSON: json)
let jsonString: String? = enumModel?.toJSONString(prettyPrint: true)
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

- (**Enum**) 
- Possible values:
    - `xvii = "xvii"`
    - `xix = "xix"`

---


#### floatEnum   {#floatEnum}

```swift
var floatEnum: floatenum?
```

- (**Enum**) 
- Possible values:
    - `number17 = 1.7`
    - `number19 = 1.9`

---


#### doubleEnum   {#doubleEnum}

```swift
var doubleEnum: doubleenum?
```

- (**Enum**) 
- Possible values:
    - `number17 = 1.7`
    - `number19 = 1.9`

---


#### integerEnum   {#integerEnum}

```swift
var integerEnum: integerenum?
```

- (**Enum**) 
- Possible values:
    - `number17 = 17`
    - `number19 = 19`

---


#### longEnum   {#longEnum}

```swift
var longEnum: longenum?
```

- (**Enum**) 
- Possible values:
    - `number17 = 17`
    - `number19 = 19`

---


[**Back to Top**](#top)


