import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'language.dart';

class LostPage extends StatefulWidget {
  @override
  State<LostPage> createState() => _LostPageState();
}

class TextContent {
  Future<Map<String, dynamic>> loadContent() async {
    final String jsonContent =
        await rootBundle.loadString('assets/json/lost.json');
    final data = await json.decode(jsonContent)[language];
    //print(data);
    return data;
  }
}

class _LostPageState extends State<LostPage> {
  late TextContent _textContent;
  Map<String, dynamic>? _content;
  @override
  void initState() {
    _textContent = TextContent();
    _loadContent();
    super.initState();
  }

  void _loadContent() async {
    final content = await _textContent.loadContent();
    setState(() {
      _content = content;
    });
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
            ExpansionTile(
              title: Text(
                _content?["overview"]["title"] ?? "",
                style: TextStyle(fontSize: 20),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              children: <Widget>[
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        _content?["overview"]["content"][0]["point1"] ?? ""),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        _content?["overview"]["content"][0]["point2"] ?? ""),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        _content?["overview"]["content"][0]["point3"] ?? ""),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        _content?["overview"]["content"][0]["point4"] ?? ""),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 1,
            ),
            ExpansionTile(
              title: Text(
                _content?["full_guide"]["title"] ?? "",
                style: TextStyle(fontSize: 20),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              initiallyExpanded: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Row(
                    children: [
                      Text(
                        _content?["full_guide"]["content"][0]["header1"] ?? "",
                        style: TextStyle(color: Colors.red, fontSize: 25),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Text(
                    _content?["full_guide"]["content"][0]["point1"] ?? "",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Row(
                    children: [
                      Text(
                        _content?["full_guide"]["content"][0]["header2"] ?? "",
                        style: TextStyle(color: Colors.red, fontSize: 25),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Text(
                    _content?["full_guide"]["content"][0]["point2"] ?? "",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Row(
                    children: [
                      Text(
                        _content?["full_guide"]["content"][0]["header3"] ?? "",
                        style: TextStyle(color: Colors.red, fontSize: 25),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Text(
                    _content?["full_guide"]["content"][0]["point3"] ?? "",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Row(
                    children: [
                      Text(
                        _content?["full_guide"]["content"][0]["header4"] ?? "",
                        style: TextStyle(color: Colors.red, fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
                  child: Text(
                    _content?["full_guide"]["content"][0]["point4"] ?? "",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
