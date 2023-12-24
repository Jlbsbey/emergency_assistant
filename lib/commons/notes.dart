import 'dart:convert';
import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'language.dart';

class NotesPage extends StatefulWidget {
  @override
  State<NotesPage> createState() => _NotesPageState();
}

class TextContent {
  Future<Map<String, dynamic>> loadContent() async {
    final String jsonContent =
    await rootBundle.loadString('assets/json/notes.json');
    final data = await json.decode(jsonContent)[language];
    return data;
  }
}

class _NotesPageState extends State<NotesPage> {
  late TextContent _textContent;

  Map<String, dynamic>? _content;

  void _loadContent() async {
    final content = await _textContent.loadContent();
    setState(() {
      _content = content;
    });
  }

  @override
  void initState() {
    _textContent = TextContent();
    _loadContent();
    updateFromFile();
    super.initState();
  }

  final myController = TextEditingController();

  @override

    Future<void> updateFromFile()async {

    Future<String> asset;
    final directory = await getApplicationDocumentsDirectory();
    final io.File file = io.File('${directory.path}/notes.txt');
    if(!await io.File('${directory.path}/notes.txt').exists()){
      file.writeAsStringSync('');
    }
    asset = file.readAsString();
    print(await asset);
    myController.text = await asset;
  }


  Future<void> updateToFile(String text)async {
    final directory = await getApplicationDocumentsDirectory();
    final io.File file = io.File('${directory.path}/notes.txt');
    file.writeAsStringSync('');
    file.writeAsStringSync(text);
  }

  @override
  Widget build(BuildContext context) {
    String label = "";
    if(language == "lv"){
      label = "Rakstiet šeit";
    }else if(language == "en"){
      label = "Write here";
    } else if(language == "ru"){
      label = "Пишите здесь";
    }
    final String labelText = label;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: kToolbarHeight * 1.5,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            _content?["name"] ?? "",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          actions: <Widget>[],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/earth.jpg'), fit: BoxFit.cover)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
              child: Text(
                _content?["text"] ?? "",
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left : 8.0, right:8),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: labelText,
                ),
                controller: myController,
                onChanged: (String value) async{
                  updateToFile(value);
                },
              ),
            )
          ]),
        ));
  }
}
