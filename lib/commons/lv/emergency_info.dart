import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmergencyInfoPage extends StatefulWidget {
  @override
  State<EmergencyInfoPage> createState() => _EmergencyInfoPageState();
}

class _EmergencyInfoPageState extends State<EmergencyInfoPage> {
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
            'Iedzīvotāju bridināšana \nun informēšana',
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
                  "Kā es uzzināšu, ka man draud briesmas?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0), //•
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "•Ieslēdz radio (",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  TextSpan(
                    text:
                        "Latvijas radio 1, 2, 3, 4, 5, radio SWH, radio Skonto, Kristīgais radio, "
                        "Saldus Radio, MG Latgolas Bolss",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                    text: ") vai TV (",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  TextSpan(
                      text: "LTV1, LTV7, LNT, TV3, TV5, Pirmais Baltijas "
                          "kanāls, Vidusdaugavas televīzija, Latgales reģionālā televīzija, Talsu televīzija, DAUTKOM "
                          "TV",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                  TextSpan(
                    text:
                        "), lai sanemtu informāciju par notikušo un turpmāko rīcību.\n"
                        "•Papildus vari sekot informācijai sociālajā tīklā Twitter: Valsts ugunsdzēsības un "
                        "glābšanas dienests @ugunsdzeseji, Valsts policija @Valsts_policija, Neatliekamā "
                        "medicīniskā palīdzība @NMPDienests.\n"
                        "•Ievēro un izpildi operatīvo dienestu norādījumus.\n"
                        "•Neizslēdz radio vai TV un seko turpmākajiem paziņojumiem un norādījumiem.\n"
                        '•Nezvani bez vajadzības operatīvajiem dienestiem, lai sanemtu vēl kādu "īpašu" '
                        "informāciju par notikušo.",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ]),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Ko darīt, ja savā atrašanās vietā es nedzirdu "
                  "trauksmes sirēnas?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
              child: Text(
                "Apdraudējuma gadījumā apziņošanu var veikt arī atbildīgo dienestu darbinieki, izmantojot operatīvo"
                "dienestu transportlīdzekļus un skaļruņus.\n"
                "Atceries: Trauksmes sirēnas iedarbina arī, ja tiek izsludināta ārkārtējā situācija, "
                "izņēmuma stāvoklis vai mobilizācija.\n"
                "Katru gadu maijā un novembrī Valsts ugunsdzēsības un glābšanas dienests veic trauksmes "
                "sirēnu pārbaudi, tās ieslēdzot uz 3 minūtēm.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
