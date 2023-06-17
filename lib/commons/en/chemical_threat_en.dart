import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChemicalENPage extends StatelessWidget {
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
            'Chemical attack',
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
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "What to do in case of a chemical attack:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "A chemical attack may be indicated by the presence of suspicious smoke, gas or droplets, an odor, or an irritating sensation in the "
                "respiratory tract of you or others in the vicinity. If you encounter such a situation, the procedure should be following:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•If you are indoors, close the windows and air conditioning system.\n"
                "•If possible, choose rooms without windows.\n"
                "•Outdoors, immediately cover your mouth and nose with a wet cloth.\n"
                "•Leave the contaminated area as quickly as possible, moving perpendicular to the wind flow (so that the wind blows from the sides).\n"
                "•Help the injured, but do not return to the contaminated area.\n"
                "•Get rid of clothing and wash your body with soap and water.\n"
                "•Wait for help and follow the instructions of the authorities. Do not go to the hospital or home on your own.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
