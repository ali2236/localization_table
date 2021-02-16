import 'package:flutter/material.dart';

class LocalizationTable {
  final Map<String, String> translations;

  LocalizationTable(this.translations);

  static LocalizationTable of(BuildContext context) {
    return Localizations.of<LocalizationTable>(context, LocalizationTable)!;
  }

  String get(String key) {
    final value = translations[key];
    if (value != null) {
      return value;
    } else {
      print('translation for key($key) not fount!');
      return key;
    }
  }
}
