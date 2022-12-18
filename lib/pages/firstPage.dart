import 'package:flutter/material.dart';
import 'package:myfirstapp/model/languagesModel.dart';
import 'package:myfirstapp/pages/secondPage.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final language = Provider.of<LanguagesModel>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(language.translations["appTitle"].toString()),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [
                                Text("Select Your Language"),
                                TextButton(
                                    onPressed: () {
                                      language.changeLanguage(Locale('lo'));
                                      Navigator.pop(context);
                                    },
                                    child: Text("Lao")),
                                TextButton(
                                    onPressed: () {
                                      language.changeLanguage(Locale('en'));
                                      Navigator.pop(context);
                                    },
                                    child: Text("English")),
                              ],
                            ),
                          ),
                        ));
              },
              icon: Icon(Icons.language))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            language.translations["home"].toString(),
            style: TextStyle(fontSize: 50),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Text(language.translations['nextPage'].toString()))
        ],
      ),
    );
  }
}
