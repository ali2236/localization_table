import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localization_table/src/CsvTable.dart';
import 'package:localization_table/src/LocalizationTable.dart';

class LocalizationTableDelegate
    extends LocalizationsDelegate<LocalizationTable> {
  final String assetPath;
  final List<Locale>? supportedLocals;
  CSVTable? _table;

  LocalizationTableDelegate(this.assetPath, {this.supportedLocals});

  @override
  bool isSupported(Locale locale) {
    if (supportedLocals != null) {
      return supportedLocals!.contains(locale);
    } else {
      return true;
    }
  }

  Future<void> init() async {
    final csvString = await rootBundle.loadString(assetPath);
    final converter = CsvToListConverter();
    final valueTable = converter.convert(csvString);

    _table = CSVTable(valueTable);
  }

  @override
  Future<LocalizationTable> load(Locale locale) async {
    if (_table == null) await init();
    return LocalizationTable(_table!.getTranslations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate old) => false;
}
