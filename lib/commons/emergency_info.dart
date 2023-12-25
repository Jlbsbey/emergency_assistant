import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'language.dart';

class EmergencyInfoPage extends StatefulWidget {
  @override
  State<EmergencyInfoPage> createState() => _EmergencyInfoPageState();
}

class TextContent {
  Future<Map<String, dynamic>> loadContent() async {
    final String jsonContent =
        await rootBundle.loadString('assets/json/emergency_info.json');
    final data = await json.decode(jsonContent)[language];
    return data;
  }
}

class _EmergencyInfoPageState extends State<EmergencyInfoPage> {
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            _content?["title"] ?? "",
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  _content?["header1"] ?? "",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 8.0),
              child: RichText(
                text: TextSpan(style: TextStyle(height: 1.5), children: [
                  if (language == "lv")
                    TextSpan(
                      text: _content?["lv_1"] ?? "",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  if (language == "lv")
                    TextSpan(
                      text: _content?["lv_2"] ?? "",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                    ),
                  if (language == "lv")
                    TextSpan(
                      text: _content?["lv_3"] ?? "",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  if (language == "lv")
                    TextSpan(
                        text: _content?["lv_4"] ?? "",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  TextSpan(
                    text: _content?["points"] ?? "",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ]),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  _content?["header2"] ?? "",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
              child: Text(
                _content?["text"] ?? "",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
