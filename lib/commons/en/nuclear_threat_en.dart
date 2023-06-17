import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NuclearENPage extends StatelessWidget {
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
            'Nuclear attack',
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
                  "Actions in the case of a nuclear threat:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "•If you are outside at the time of the explosion, hide from the blast as soon as possible behind anything that can provide protection "
                "(e.g., buildings, low-lying areas)\n"
                "•Go into the nearest building. If possible, choose a reinforced concrete or brick building.\n"
                "•Close building windows (if any are left), do not ventilate rooms, and do not use air conditioning.\n"
                "•Inside the building, go into the basement of the house; if there is no basement, avoid the upper floors and exterior walls.\n"
                "•Get rid of clothing, wash your body with soap and water.\n"
                "•Stay indoors for at least 24 hours. Communications may be down, so watch for announcements on the radio.\n"
                "•Consume only packaged foods, don't smoke, and don't take water from open sources.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
