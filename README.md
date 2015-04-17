# JLJSONHelper v1.0.0

JLJSONHelper is a helper class based on NSJSONSerialization provided by Apple.

## Install

Copy below files into your project. 
```
JLJSONHelper.h
JLJSONHelper.m
```


## Usage

1. import header file `#import "JLJSONHelper.h"`
2. just call class methods :D

* String -> JSON Object
```
+ (id)JSONObjectFromString:(NSString *)jsonString;
```

* JSON Object -> String
```
+ (NSString *)stringFromJSONObject:(id)json;
+ (NSString *)stringPrettyPrintedFromJSONObject:(id)json;
```


## Example result of stringFromJSONObject
```
{"glossary":{"title":"example glossary","GlossDiv":{"title":"S","GlossList":{"GlossEntry":{"SortAs":"SGML","Abbrev":"ISO 8879:1986","GlossTerm":"Standard Generalized Markup Language","GlossDef":{"GlossSeeAlso":["GML","XML"],"para":"A meta-markup language, used to create markup languages such as DocBook."},"GlossSee":"markup","ID":"SGML","Acronym":"SGML"}}}}}
```

## Example result of stringPrettyPrintedFromJSONObject
```
{
  "glossary" : {
    "title" : "example glossary",
    "GlossDiv" : {
      "title" : "S",
      "GlossList" : {
        "GlossEntry" : {
          "SortAs" : "SGML",
          "Abbrev" : "ISO 8879:1986",
          "GlossTerm" : "Standard Generalized Markup Language",
          "GlossDef" : {
            "GlossSeeAlso" : [
              "GML",
              "XML"
            ],
            "para" : "A meta-markup language, used to create markup languages such as DocBook."
          },
          "GlossSee" : "markup",
          "ID" : "SGML",
          "Acronym" : "SGML"
        }
      }
    }
  }
}
```


## License

Licensed under the MIT license. You can use the code in your commercial and non-commercial projects.
