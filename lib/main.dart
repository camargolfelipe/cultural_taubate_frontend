import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cultural_tte_front/helper/translation.dart';
import 'package:cultural_tte_front/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('pt', 'BR'),
      translationsKeys: Messages.translationKeys,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
