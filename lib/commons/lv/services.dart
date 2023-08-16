import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HowToServicesPage extends StatefulWidget {
  @override
  State<HowToServicesPage> createState() => _HowToServicesPageState();
}

class _HowToServicesPageState extends State<HowToServicesPage> {
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
            'Dienestu izsaukšana',
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
              child: Row(
                children: [
                  Text(
                    "Kas ir jāsaka?",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Ja ir noticis negadījums un ir nepieciešams zvanīt uz tālruņa numuru 112, vispirms centieties nomierināties. Gaidiet savienojumu ar 112 kontaktu centru. "
                "Esiet gatavi smiegt sekojošu informāciju:",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Nosaukt precīzu adresi vai aprakstīt notikuma vietu.\n"
                "•Īsi pastāstīt, kas ir noticis.\n"
                "•Centies par negadījumu atcerēties visu pēc iespējas precīzāk.\n"
                "•Pēc dispečera lūguma nosaukt savu vārdu, uzvārdu un tālruņa numuru.\n"
                "•Atcerieties! Nepārtrauciet sarunu pirmais!",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Saglabājiet mieru un atbildiet uz dispečera jautājumiem.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Atcerieties:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Esiet sazvanāms, gadījumā, ja dispečeram rodas nepieciešamība ar Tevi sazināties atkārtoti.\n"
                "•Konkrētas atbildes var paātrināt palīdzības saņemšanu.\n"
                "•Neviens dispečera jautājums nav lieks.\n",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
