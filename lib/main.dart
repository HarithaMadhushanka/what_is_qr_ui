import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_is_qr_ui/screens/whatisqrscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      theme: CupertinoThemeData(
        primaryColor: Color(0xffffffff),
      ),
      home: WhatIsQrScreen(),
    );
  }
}
