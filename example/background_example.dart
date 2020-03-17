
import 'package:flutter/painting.dart';
import 'package:localization_table/localization_table.dart';

void backgroundEntryPoint() async{

  final locale = Locale('en');

  final table = await LocalizationTableDelegate('assets/table.csv').load(locale);

  String appName = table.get('app_name');

  showNotification(appName);
}

void showNotification(String title){
  throw UnimplementedError();
}