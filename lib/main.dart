import 'package:flutter/material.dart';
import 'package:myfirstapp/model/languagesModel.dart';
import 'package:myfirstapp/pages/firstPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguagesModel>(
      create: (_) => LanguagesModel(),
      child: Consumer<LanguagesModel>(builder: (context, model, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        );
      }),
    );
  }
}
