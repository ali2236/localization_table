# localization_table

Localize you app using tables

## How yo use

1. Create your table file with `.csv` format.

2. Put your supported languages in the first row, starting from the second cell

3. Put your string keys in the first column, starting from the second cell

4. Put your default language in the first cell at (0,0)

Example Table:

[](TODO) 


### using the extension method

For ease of use there is a built in extension method that can be used in flutter projects that use dart 2.7.0 or higher.

#### Example
```dart
    Text('login'.getString(context))
``` 

## How to use in background

```dart

void backgroundEntrePoint() async {}


```