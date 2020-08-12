import 'package:flutter/material.dart';

class CSVTable {
  final List<List<dynamic>> table;

  CSVTable(this.table);

  Map<String, String> getTranslations(Locale locale) {
    var defaultLanguage = table.first.first;
    var defaultLanguageIndex =
        table.first.skip(1).toList().indexOf(defaultLanguage) + 1;
    var languageIndex =
        table.first.skip(1).toList().indexOf(locale.languageCode) + 1;

    var translations = <String, String>{};

    for (int i = 1; i < table.length; i++) {
      try {
        var key = table[i].first;
        var languageValue = table[i][languageIndex];
        var defaultValue = table[i][defaultLanguageIndex];
        translations.addAll({key: languageValue ?? defaultValue});
      } catch (e){
        if(table[i].first!=null){
          assert((){
            print('table row with key=${table[i].first} had an exception');
            return true;
          }());
        }
      }
    }

    return translations;
  }
}
