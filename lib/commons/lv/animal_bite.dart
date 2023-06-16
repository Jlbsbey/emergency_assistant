import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnimalPage extends StatelessWidget {
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
            'Dzīvnieku kodums',
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
                'Īsi un konkrēti',
                style: TextStyle(fontSize: 20),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              children: <Widget>[
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Labāk pazvanīt 113'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Ja brūce stipri neasiņo, pārsej to un ej uz slimnīcas uzņemšanas nodaļu'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child:
                        Text('•Ja iekodusi čūska jebkurā gadījumā zvani 113'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Nomierini cietušo un dod viņam sķidrumu'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Dzīvnieku kostas brūces:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Dažādi meža un mājas dzīvnieki var pārnēsāt trakumsērgu, vērsies slimnīcu uzņemšanas nodaļā vai traumpunktā. "
                "Ņem vērā, ka no trakumsērgas pasargā potēšanās tūlīt pēc dzīvnieka koduma.\n Kā palīdzēt cietušajam?",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 32),
                child: Text(
                  "•Ja brūce stipri neasiņo, to mazgā ar ziepēm un ūdeni\n"
                  "•Pārsien brūci\n"
                  "•Ja cietušajam nav stipra asiņošana, cietušajam pašam vai ar tuvinieku palīdzību jādodas uz slimnīcas "
                  "uzņemšanas nodaļu. Stipras asiņošanas gadījumā jāizsauc neatliekamā medicīniskā palīdzība, zvanot 113.",
                  style: TextStyle(fontSize: 16),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Čūskas kodums:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Ko darīt, ja iekodusi čūska?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Ja iekodusi čūska, koduma vietā būs sāpes un var redzēt pietūkumu. Smagākos gadījumos pēc odzes "
                  "kodiena cietušajam var būt nopietni sirdsdarbības traucējumi, elpas trūkums, slikta dūša, vemšana, "
                  "caureja. Pietūkums sakostā ķermeņa vieta var izteikti palielināties, āda var kļūt zilgani violeta.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Ja iekodusi čūska, jāpieņem sliktākais variants, ka ir iekodusi odze. Tādā gadījumā:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 32, right: 8, bottom: 8),
                child: Text(
                  "•Jāizsauc neatliekamā medicīniskā palīdzība, zvanot 113, jo cietušajam palīdzība jāsaņem pēc iespējas drīzāk.\n"
                  "•Cietušais jānogulda, jāpalīdz viņam nomierināties.\n"
                  "•Jācenšas nekustināt un neberzēt sakosto ķermeņa daļu, lai inde tik strauji neizplatītos. Tas ir būtiski, "
                  "jo kustības paātrina asinsriti, līdz ar to arī indes izplatīšanos.\n"
                  "•Neļaut atdzist cietušajam/ pasargā to no apkārtējās vides.\n"
                  "•Ja iespējams, jādod pastiprināti dzert, lai nodrošinātu organismam šķidrumu.\n"
                  "•Uz koduma vietas var uzlikt kaut ko aukstu, lai mazinātu niezi un sašaurinātos asinsvadi."
                  " Nekādā gadījumā nedrīkst likt žņaugu vai pārsējus, sūkt indi ar muti, griezt vai piededzināt koduma vietu.\n"
                  "•Nedrīkst dot nekādus medikamentus, jo nav zināms, kā zāles reaģēs ar čūskas indi.",
                  style: TextStyle(fontSize: 16),
                )),
          ]),
        ));
  }
}
