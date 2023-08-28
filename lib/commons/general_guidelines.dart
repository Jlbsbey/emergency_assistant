import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'emergency_info.dart';
import 'emergency_items.dart';
import 'first_help.dart';
import 'language.dart';
import 'services.dart';

class TextContent {
  Future<Map<String, dynamic>> loadContent() async {
    final String jsonContent =
        await rootBundle.loadString('assets/json/general_recomendations.json');
    final data = await json.decode(jsonContent)[language];
    return data;
  }
}

class GeneralPage extends StatefulWidget {
  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
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
        body: Column(
          children: [
            //_________________________________________________________________________________1
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: (MediaQuery.of(context).size.height -
                            kToolbarHeight * 2.5) /
                        2,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 4.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/first_help.jpeg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _content?["plate1"] ?? "",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirstHelpPage()));
                      },
                    ),
                  ),
                ),
                //_________________________________________________________________________________2
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: (MediaQuery.of(context).size.height -
                            kToolbarHeight * 2.5) /
                        2,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 4.0, right: 8.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/services.jpg'),
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
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HowToServicesPage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            //_________________________________________________________________________________3
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: (MediaQuery.of(context).size.height -
                            kToolbarHeight * 2.5) /
                        2,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 4.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/bag.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _content?["plate3"] ?? "",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EmergencyItemsPage()));
                      },
                    ),
                  ),
                ),
                //_________________________________________________________________________________4
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: (MediaQuery.of(context).size.height -
                            kToolbarHeight * 2.5) /
                        2,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 4.0, right: 8.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/information.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _content?["plate4"] ?? "",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EmergencyInfoPage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
