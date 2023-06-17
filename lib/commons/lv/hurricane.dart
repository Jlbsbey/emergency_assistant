import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HurricanePage extends StatefulWidget {
  @override
  State<HurricanePage> createState() => _HurricanePageState();
}

class _HurricanePageState extends State<HurricanePage> {
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
            'Viesuļvētra',
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
                    "Ko darīt viesuļvētras laikā?",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Vispirms evakuējieties, ja tiekat norīkots tā darīt vai jūtat, ka palikt savās mājās var būt nedroši. "
                "Ja paliekat savās mājās, sekojiet šiem padomiem, lai vētras laikā palīdzētu jums un jūsu ģimenei "
                "palikt drošībā:",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Izmantojiet portatīvo radio, lai klausītos svarīgus vētras atjauninājumus, informāciju un norādījumus.\n"
                "•Palieciet iekšā un turieties tālāk no visiem logiem un stikla durvīm. Dodieties uz drošu zonu, piemēram, iekšējo "
                "telpu(telpu bez logiem), skapi vai lejasstāva vannas istabu.\n"
                "•Nekad nedodieties ārpus savas mājas vai patversmes aizsardzības, pirms nav saņemts apstiprinājums, "
                "ka vētra ir pagājusi garām teritorijai. Viesuļvētras acs varēja radīt īslaicīgu un mānīgu pārtraukumu, "
                "joprojām vējam tuvojoties.\n"
                "•Ja enerģija ir zudusi, turiet ledusskapi aizvērtu, lai aukstais gaiss būtu iesprostots un aizkavētu ātrbojīga "
                "ēdiena bojāšanos.\n"
                "•Ja izmantojat pārnēsājamu ģeneratoru, izpildiet visas ražotāja instrukcijas. "
                "Ģeneratori ir pareizi jāiezemē, lai novērstu elektriskās strāvas triecienu, un tos nekādā gadījumā "
                "nedrīkst darbināt telpās, garāžās, pagrabos vai ārpus telpām netālu no logiem, durvīm vai ventilācijas "
                "atverēm. Tā kā ģeneratori ražo oglekļa monoksīdu (CO), pārliecinieties, vai mājās ir strādājošs CO "
                "detektors.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
