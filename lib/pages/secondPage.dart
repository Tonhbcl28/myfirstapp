import 'package:flutter/material.dart';
import 'package:myfirstapp/model/languagesModel.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final language = Provider.of<LanguagesModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(language.translations['secondPage'].toString()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            language.translations['secondPage'].toString(),
            style: TextStyle(fontSize: 50),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, child: Text(language.translations['back'].toString()))
        ],
      ),
    );
  }
}
