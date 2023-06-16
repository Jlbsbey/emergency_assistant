import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChemicalPage extends StatelessWidget {
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
            'Ķimiskie draudi',
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
                  "Rīcība ķīmiskā uzbrukuma gadījumā:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Par ķīmisko uzbrukumu var liecināt aizdomīga dūmu, gāzes vai pilienu klātbūtne, smakšanas vai kairinoša "
                "sajūta elpceļos Jums vai apkārtējiem cilvēkiem esošajā teritorijā. Ja saskaries ar šādu situāciju, tad ricību kartība ir sekojoša:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Ja esi iekštelpās - aizver logus, dabīgās ventilācijas un kondicionēšanas sistēmas. "
                "•Ja iespējams, izvēlies telpas, kurās nav logi.\n"
                "•Ārpus telpām nekavējoties aizsedz muti un degunu ar mitru audumu.\n"
                "•Cik iespējams ātri pametiet piesarņoto teritoriju, virzoties perpendikulāri vēja plūsmai(lai vējš pūš no sāniem).\n"
                "•Palīdziet apkartējiem, bet nedodieties atpakaļ piesarņotajā teritorijā.\n"
                "•Atbrīvojieties no apģerba, nomazgājiet ķermeni ar ziepēm un ūdeni.\n"
                "•Sagaidiet palidzību un sekojiet atbildīgo dienestu rīkojumiem. Patvaļīgi nedodieties uz slimnīcu vai mājām.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
