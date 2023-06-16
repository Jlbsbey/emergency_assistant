import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmergencyInfoENPage extends StatefulWidget {
  @override
  State<EmergencyInfoENPage> createState() => _EmergencyInfoENPageState();
}

class _EmergencyInfoENPageState extends State<EmergencyInfoENPage> {
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
            'Informing and alerting \nresidents',
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
                  "How will I know if I'm in danger?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0), //•
              child: Text(
                "•Turn on the radio or TV to find out what happened and what to do next.\n"
                "•You can also follow government services on social media and get information from there.\n"
                "•Obey and follow the instructions of the emergency services.\n"
                "•Keep the radio or television on and follow further announcements and instructions.\n"
                "•Do not call emergency services unnecessarily to get more ''special'' information about what happened.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "What if I can't hear the sirens where I am?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
              child: Text(
                "In the event of an emergency, emergency services can also alert the public using emergency vehicles and loudspeakers.\n"
                "Remember: sirens are also turned on when an emergency, state of emergency or mobilization is declared.\n"
                "The public alert sirens are checked regularly by  turning them on for 3 minutes.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
