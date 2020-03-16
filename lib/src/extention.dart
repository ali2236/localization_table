import 'package:flutter/material.dart';
import 'package:localization_table/src/LocalizationTable.dart';

extension LocalizedString on String {

  String getString(BuildContext context) {
    return LocalizationTable.of(context).get(this);
  }

}