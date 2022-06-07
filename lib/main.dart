import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uidesign/addexpense.dart';
import 'package:uidesign/homepage.dart';

import 'package:uidesign/providers/provider_transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<transaction>(
            create: (context) => transaction(), child: HomePage()));
  }
}
