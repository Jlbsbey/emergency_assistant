import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OccupationENPage extends StatelessWidget {
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
            'Military occupation',
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
            const ExpansionTile(
              title: Text(
                'Briefly and concretely',
                style: TextStyle(fontSize: 20),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              children: <Widget>[
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        "•Evacuate to a part of the country controlled by your country's armed forces."),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Continue to follow the laws of your country'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Do not cooperate with the occupying power:'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Disassociate yourself from their decisions and actions'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Do not participate in public events organized by them, do not give them interviews and do not allow yourself to be filmed'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Do not participate in illegal elections, referendums and voting'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Resistance:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Even if, as a result of military action, control over part of the territory is temporarily lost, the armed forces will continue to "
                "defend the country, resisting until independence is restored.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "If you are in occupied territory:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 8.0),
                child: Text(
                  "•Evacuate to a part of the country controlled by your country's armed forces.\n"
                  "•Continue to follow the laws of your country.\n"
                  "•Do not cooperate with the occupying power:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 48.0, right: 8.0),
                child: Text(
                  "•Disassociate yourself from their decisions and actions.\n"
                  "•Do not participate in public events organized by them, do not give them interviews and do not allow yourself to be filmed.\n"
                  "•Do not participate in illegal elections, referendums and voting.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "If you choose to resist, you have the right to do so:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•To resist (including sabotage, subversion) the enemy with the armed forces of your own country.\n"
                "•Engage in civil disobedience - for example, disobeying laws issued by the occupation authorities, refusing to serve and work for them, "
                "organizing mass strikes.\n"
                "•Support resistance.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Evacuation:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "If the authorities have issued an evacuation order:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Listen carefully to evacuation announcements, memorize and write down the evacuation direction, destination or pick-up point. Carry "
                "identification with you wherever you go.\n"
                "•If possible, turn off gas, electricity, and water in your home, close windows, and lock doors before evacuating.\n"
                "•Use the routes recommended by public services and don't take unfamiliar routes.\n"
                "•If you cannot use your own vehicle, go to the nearest designated evacuation collection point.\n"
                "•In the event of an evacuation, notify relatives.\n"
                "•Bring an emergency kit with you.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Please note:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Do not attempt to return home before obtaining permission from the authorities.\n"
                "•Do not wear paramilitary clothing, camouflage uniforms or paramilitary bags when off duty.\n"
                "•Do not approach unidentified armed people unnecessarily, do not provoke them or film them, and do not pick up abandoned weapons or "
                "suspicious objects.\n"
                "•Do not attempt to move unexploded ammunition, mines, or disarm improvised explosive devices yourself.\n"
                "•Do not spread information (photos, videos, texts) about the movements, locations, and positions of your country's armed forces.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
