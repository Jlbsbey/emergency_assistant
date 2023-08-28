import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'fire_building.dart';
import 'fire_forest.dart';
import 'language.dart';

class FirePage extends StatefulWidget {
  @override
  State<FirePage> createState() => _FirePageState();
}

class TextContent {
  Future<Map<String, dynamic>> loadContent() async {
    final String jsonContent =
        await rootBundle.loadString('assets/json/fire.json');
    final data = await json.decode(jsonContent)[0]["fire"][language];
    print(data);
    return data;
  }
}

class _FirePageState extends State<FirePage> {
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
          child: Column(
            children: [
              Row(
                children: [
                  //____________________________________________________________________________________
                  Container(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.50,
                      height: MediaQuery.of(context).size.height -
                          kToolbarHeight * 2.5,
                      child: MaterialButton(
                        padding: EdgeInsets.only(
                            left: 8.0, bottom: 8, top: 8, right: 4),
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 255, 255, 255),
                        elevation: 8.0,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage('assets/fire_build.jpeg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _content?["plate1"] ?? "",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FireBuildingPage()));
                        },
                      ),
                    ),
                  ),
                  //_____________________________________________________________________________________
                  Container(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.50,
                      height: MediaQuery.of(context).size.height -
                          kToolbarHeight * 2.5,
                      child: MaterialButton(
                        padding: EdgeInsets.only(
                            left: 4.0, bottom: 8, top: 8, right: 8),
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 255, 255, 255),
                        elevation: 8.0,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage('assets/fire_forest.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _content?["plate2"] ?? "",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FireForestPage()));
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
