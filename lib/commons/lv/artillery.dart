import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ArtilleryPage extends StatelessWidget {
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
            'Artilērijas apšaude',
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
                    child: Text(
                        '•Ja esiet uz ielas, tad krītiet, kur stāvat kamēr viss beigsies.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Ja esat iekšā, tad ejiet telpā bez logiem un ar nesošajām sienām un gaidiet tur.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Nekāda gadījumā nedrīkst skriet pa ielu un neļaviet to nevienam citam.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child:
                        Text('•Ja esat pietiekami tuvu pagrabam - ejiet tur.'),
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
                    "Kā skan šāvieni?",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Īstas šāvienu trapīšanas skaņas ir smagas, ar raksturīgu krakšķi, iekļūstot mājās,"
                " un kurlākas, ja šāviens trāpīja zemē.\n"
                "82 milimetru mīnas, mazākās no izmantotajām, lidojot izdod raksturīgu svilpienu, 120 milimetru — šņākšanu, "
                "reaktīvie tanku šāviņi — gaudošanu. “Gradi” un pārējie reaktīvas artilērijas šāviņi lidojuma laikā vispār nav dzirdami.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Ko darīt kad izskan pirmie šāviņi?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Krītiet, kur stāvat, un gaidiet apšaudi tur. Mainiet atrašanās vietu tikai galējā gadījumā. Klausieties un vienlaikus "
                  "pieskatiet vietu, kur patverties. Jums jānoķer ritms: zalves skaņa, šāviņa lidojuma laiks un kritiens. Skaitiet sekundes "
                  "no zalves līdz kritienam un sāciet skriet uzreiz pēc ielidošanas. Jums jānokrīt pāris sekundes pirms kārtējā trāpījuma aprēķina "
                  "laika. Ja darbojas divi un vairāki artilērijas gabali, rēķinieties no pēdējā.\n"
                  "Atveriet muti un aizveriet ausis ar rokām. Tas ļaus izvairīties no kontūzijas un saglabās dzirdi īpaši tuvos sprādzienos. "
                  "Ja gadījies tā, ka pēc šāviena trapīšanas vairs nedzirdat, nebaidieties. Parasti, ja nav fizisku bojājumu, dzirde atjaunojas "
                  "3-7 dienu laikā. Aizveriet acis, lai pasargātu tās no putekļiem un akmens drupačām.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Kur paslēpties?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Jo zemāk jūs būsiet attiecībā pret Zemes virsmu, jo labāk. Pazemes pārejas, pagrabi, kolektoru lūkas (ar nosacījumu, "
                  "ka no turienes negāž tvaiki), grāvji, tranšejas un pat vienkārši augsta apmale. Derēs jebkurš apvidus reljefs, kas spēs "
                  "pasargāt jūs no šķembām. Sprādziena laikā šķembas sašķīst uz augšu un sānis pa pieskari, tāpēc, jo zemāk attiecībā pret "
                  "zemes līmeni nogulsieties, jo lielākas izredzes palikt neskartam.",
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
                  "Nekādā gadījumā neslēpieties pie ēku sienām. Šāviņam iekļūstot sienā, jūs varat būt savainoti ar ķieģeļu, betona atlūzām vai vispār apkrauti.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Tas pats attiecas uz logiem: viens neliela izmērs logs pārvēršas pēc sprādziena sīkās šķembās, "
                  "no kurām daļa izlido uz ielas un var jūs nopietni ievainot. "
                  "Izvairieties no dažādiem krāvumiem: no kastēm, konteineriem un citiem priekšmetiem, ar kuriem jūs var apkraut pat no "
                  "triecienviļņa. Nav vērts līst arī zem mašīnām: tās jūs nekādi neglābs un nepasargās no šķembām.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Kur ir visdrošāk telpā?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Par drošāko vietu apšaužu laikā (tā ir arī jūsu nakšņošanas vieta) jākļūst iekšējai istabai, vēlams ar nesošajām sienām, "
                  "bez logiem vai logiem, kas iziet uz citas mājas sienu. Parūpējieties par paklāju uz grīdas.\n"
                  "Ja iespējams, klājiet virsū biezu segu — tā ir papildu aizsardzība gan pret lauskām izlidojumā, gan pret ēkas drupačām "
                  "un stiklu. "
                  "Netērējiet laiku, kāpjot pagrabā, ja dzīvojat augšējos stāvos. Labāk apgulieties durvju ailā vai kāpņu telpā. Šāviņš "
                  "ar vienādu varbūtību var trāpīt gan devītajā, gan trešajā stāvā brīdī, kad skriesiet pa trepēm. Neriskējiet bezjēdzīgu "
                  "priekšnojautu dēļ.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Ko darīt, ja šaušana pieķērusi ceļā?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Ja pārvietojaties ar mašīnu pa saskares līniju, neaizveriet logus. Tas ļaus kontrolēt situāciju, kā gadījumā ātri "
                  "apstāties un izkāpt no mašīnas. "
                  "Pat ja ārā ir bargs sals, turiet auto logus vaļā, līdz atstājat apšaudes zonu.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Kā tikt galā ar emocijām?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
                child: Text(
                  "Centieties nomierināties. Ateisti var skaitīt līdz simtam, ticīgie — lūgt Dievu. Gan vieniem, gan otriem ir jācenšas elpot "
                  "vienmērīgi un dziļi. \n"
                  "Lai kas notiktu apkārt, galvenais ir nekrist panikā. Nevajag skriet, īpaši, ja apkārt ir cilvēki. Kāds var sekot jūsu "
                  "muļķīgajam piemēram. Ļoti bieži sievietes šādās situācijās pazūd, var sastingt uz vietas vai aizskriet. Nometiet tos zemē "
                  "(vienalga, vai uz dubļiem, peļķēm un atkritumiem zem kājām) un neļaujiet kustēties. \n"
                  "Ja esat nonācis apšaudē ar meiteni vai bērnu, stingri turiet viņus aiz rokas un neļaujiet izslieties un skriet.\n"
                  "Nebaidieties atsvērt pāris pļauku.\n"
                  "Ja esat ļoti nepacietīgs, varat kliegt. Ar apšaudēm ir bail visiem, izņēmumu nav.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ]),
        ));
  }
}
