import 'package:showdialog_alertdialog1/01_diagol/alert_diagol.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogScreen(),
    );
  }
}
