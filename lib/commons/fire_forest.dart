import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'language.dart';

class FireForestPage extends StatefulWidget {
  @override
  State<FireForestPage> createState() => _FireForestPageState();
}

class TextContent {
  Future<Map<String, dynamic>> loadContent() async {
    final String jsonContent =
        await rootBundle.loadString('assets/json/fire.json');
    final data = await json.decode(jsonContent)[0]["forest"][language];
    return data;
  }
}

class _FireForestPageState extends State<FireForestPage> {
  late TextContent _textContent;

  Map<String, dynamic>? _content;

  void _loadContent() async {
    final content = await _textContent.loadContent();
    setState(() {
      _content = content;
    });
  }

  bool _showBackToTopButton = false;
  late ScrollController _scrollController;
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: Duration(milliseconds: _scrollController.offset ~/ 5),
        curve: Curves.linear);
  }

  @override
  void initState() {
    _textContent = TextContent();
    _loadContent();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.06;
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
        controller: _scrollController,
        child: Column(children: <Widget>[
          ExpansionTile(
            title: Text(
              _content?["overview"]["title"] ?? "",
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title:
                      Text(_content?["overview"]["content"][0]["point1"] ?? ""),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title:
                      Text(_content?["overview"]["content"][0]["point2"] ?? ""),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title:
                      Text(_content?["overview"]["content"][0]["point3"] ?? ""),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title:
                      Text(_content?["overview"]["content"][0]["point4"] ?? ""),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title:
                      Text(_content?["overview"]["content"][0]["point5"] ?? ""),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child:
                      Text(_content?["overview"]["content"][0]["point6"] ?? ""),
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
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Text(
                    _content?["full_guide"]["content"][0]["text1"] ?? "",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    _content?["full_guide"]["content"][0]["header1"] ?? "",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  _content?["full_guide"]["content"][0]["text2"] ?? "",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    _content?["full_guide"]["content"][0]["header2"] ?? "",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
                child: Text(
                  _content?["full_guide"]["content"][0]["text3"] ?? "",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    _content?["full_guide"]["content"][0]["header3"] ?? "",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
                child: Text(
                  _content?["full_guide"]["content"][0]["text4"] ?? "",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    _content?["full_guide"]["content"][0]["text5"] ?? "",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    _content?["full_guide"]["content"][0]["header4"] ?? "",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 25.0, right: 8, top: 8, bottom: h),
                child: Text(
                  _content?["full_guide"]["content"][0]["points"] ?? "",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ]),
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.04,
              child: ElevatedButton.icon(
                onPressed: _scrollToTop,
                icon: Icon(Icons.arrow_upward),
                label: Text(_content?["buttontext"] ?? ""),
              ),
            ),
    );
  }
}
