import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LostDocENPage extends StatefulWidget {
  @override
  State<LostDocENPage> createState() => _LostDocENPageState();
}

class _LostDocENPageState extends State<LostDocENPage> {
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
          title: const Text(
            'Lost documents abroad',
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
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "What should I do if I have problems with my passport while abroad?",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
              child: Text(
                "First of all, go to the nearest police station and write a statement about the loss or theft of your passport. It is necessary to get a "
                "certificate confirming the loss of the document. If you do not speak the language of the country you are in, try to explain the "
                "situation using Google Translator. \n"
                "Then go to your country's embassy or consulate. Get a certificate of return or apply for a new passport (if you are abroad for a long "
                "time or, for example, moved for permanent residence. You usually have to wait about three months for your passport. The consulate "
                "will tell you all the details).\n"
                "If you are in the country for a short time, you need to get a certificate of arrival. This is a temporary document that replaces your "
                "passport if it is lost or expired abroad. The certificate allows you to stay in the country you are in and allows you to return back. "
                "If you have to transit through another country, it is better to check with the consulate staff. The certificate is valid not more than "
                "30 days from the date of issue. And in this period you need to have time to fly home. After you return home, you must go to the "
                "Department of Citizenship, Immigration and Registration, turn in the certificate and get a new passport.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
