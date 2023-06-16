import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmergencyItemsPage extends StatefulWidget {
  @override
  State<EmergencyItemsPage> createState() => _EmergencyItemsPageState();
}

class _EmergencyItemsPageState extends State<EmergencyItemsPage> {
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
            'Evakuācija un ārkārtas \ngadījumu soma',
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
                  "Ko darīt, ja nepieciešams evakuēties?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0), //•
              child: Text(
                "•Uzmanīgi ieklausies paziņojumā par evakuācijas norisi, iegaumē un ievēro evakuācijas "
                "virzienu, galamērki vai pulcēšanās vietu.\n"
                "•Ja iespējams, izmanto savu transportlīdzekli un brauc norādītajā evakuācijas virzienā uz "
                "galamērki vai uz iepriekš izvēlēto vietu, kur esi plānojis patverties un kas sakrīt ar "
                "evakuācijas virzienu.\n"
                "•Ja nav iespējams izmantot savu transportlīdzekli, dodies uz tuvāko norādīto evakuācijas "
                "pulcēšanās vietu.\n"
                "•Evakuācijas gadījumā paziņo par to tuviniekiem.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Kas jāņem līdzi evakuējoties?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Ja nepieciešama operatīva un īslaicīga evakuācija, ņem līdzi personu apliecinošus "
                "dokumentus (pase, ID karte), naudu, bankas kartes, mobilo telefonu, tā lādētāju, portatīvo "
                "radioaparātu ar baterijām un medikamentus, ja tos nepieciešams lietot regulāri. Ilgstošas "
                "evakuācijas gadījumā ņem līdzi ārkārtas gadījumu somu.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Kas ir ārkārtas gadījumu soma un ko tajā likt iekšā?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Arkārtas gadījumu soma satur lietas, kas cilvēkam vai ģimenei būs nepieciešamas ilgstošas "
                "un paredzamas evakuācijas, kā arī komunālo pakalpojumu (gāze, elektrība, ūdens) padeves "
                "pārtraukuma gadījumā. Izmanto šo sarakstu un sagatavo somu savlaicīgi. Somā liec:",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 0),
              child: Text(
                "•Svarīgu dokumentu (pase vai ID karte, autovadītāja apliecība, "
                "transportlīdzekļa tehniskā pase, u.c.) kopijas polietilēna iesaiņojumā. "
                "Personu apliecinošo dokumentu orģinālus turi pie sevis\n"
                "•Nelielu naudas summu. Pārējo naudu un bankas kartes turi pie sevis.\n"
                "•Portatīvo radioaparātu, sērkociņus vai škiltavas, lukturīti, baterijas.\n"
                "•Daudzfunkcionālu saliekamo nazi, karoti, neplīstošu bļodiņu un krūzīti.\n"
                "•Līmlenti, auklu, diegu, adatu, škēres, papīru un rakstāmpiederumus.\n"
                "•Pirmās palīdzības aptieciņu.\n"
                "•Apģērbu, rezerves apakšveļu un ērtus apavus.\n"
                "•Guļammaisu vai segu, tūristu paklājiņu, vēlams telti.\n"
                "•Higiënas piederumus, dvieli, tualetes papīru, vienreiz lietojamās salvetes.\n"
                "•Pārtiku, ko var lietot bez termiskas apstrādes un ar ilgu derīguma termiņu - "
                "sausās zupas, konservus, sausiņus, saldumus ar augstu kaloriju saturu.\n"
                "•Dzeramo ūdeni vairākām dienām (ieteicams plastmasas pudelēs).\n",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 8, bottom: 8),
              child: Text(
                "Atceries: Ja tas ir iespējams, pirms evakuācijas atslēdz savam mājoklim gāzes un elektrības padevi.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ));
  }
}
