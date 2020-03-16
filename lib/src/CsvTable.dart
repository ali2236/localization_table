import 'package:flutter/material.dart';

class CSVTable {

  final List<List<String>> table;

  CSVTable(this.table);

  Map<String, String> getTranslations(Locale locale){
    var defaultLanguage = table.first.first;
    var defaultLanguageIndex = table.first.indexOf(defaultLanguage);
    var languageIndex = table.first.indexOf(locale.languageCode);

    var translations = <String, String>{};

    for(int i=1;i<table.length;i++){
      var key = table[i].first;
      var languageValue = table[i][languageIndex];
      var defaultValue = table[i][defaultLanguageIndex];
      translations.addAll({key : languageValue ?? defaultValue});
    }

    return translations;
  }




}