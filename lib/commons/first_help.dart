import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'language.dart';

class FirstHelpPage extends StatefulWidget {
  @override
  State<FirstHelpPage> createState() => _FirstHelpPageState();
}

class TextContent {
  Future<Map<String, dynamic>> loadContent() async {
    final String jsonContent =
        await rootBundle.loadString('assets/json/first_help.json');
    final data = await json.decode(jsonContent)[language];
    return data;
  }
}

class _FirstHelpPageState extends State<FirstHelpPage> {
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
        controller: _scrollController,
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
            padding: const EdgeInsets.only(left: 24.0, right: 8.0, bottom: 8),
            child: Text(
              _content?["text1"] ?? "",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
                height: 130, child: Image(image: AssetImage('assets/12.png'))),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
                height: 130, child: Image(image: AssetImage('assets/34.png'))),
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
            padding: const EdgeInsets.only(left: 24.0, right: 8.0, bottom: 8),
            child: Text(
              _content?["text2"] ?? "",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
                height: 140,
                child: Image(image: AssetImage('assets/screen5.png'))),
          ),
          Padding(padding: EdgeInsets.only(bottom: h)),
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
