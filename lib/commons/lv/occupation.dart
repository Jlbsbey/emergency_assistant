import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OccupationPage extends StatelessWidget {
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
            'Okupācija',
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
                        '•Evakuējies uz to valsts daļu, ko kontrolē NBS vai NATO apvienotie spēki'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Turpini ievērot Latvijas Republikas likumus'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Nesadarbojies ar okupācijas varu:'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text('•Nošķiries no viņu lēmumiem un darbībām'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Nepiedalies to organizētajos publiskajos pasākumos, nesniedzot tiem intervijas un neļaujot sevi filmēt'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Nepiedalies nelikumīgās vēlēšanās, referendumos vai tautas nobalsošanās'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Pretošanās:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Pat ja karadarbības rezultātā īslaicīgi tiktu zaudēta kontrole pār daļu no teritorijas,"
                " bruņotie spēki turpinās valsts aizsardzību, izrādot pretestību tik ilgi, kamēr tiks atjaunota valsts "
                "neatkarība.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Ja atrodies okupētajā teritorijā:",
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
                  "•Evakuējies uz to valsts daļu, ko kontrolē NBS\n"
                  "•Turpini ievērot Latvijas Republikas likumus\n"
                  "•Nesadarbojies ar okupācijas varu:",
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
                  "•Noškiries no viņu lēmumiem un darbībām\n"
                  "•Nepiedalies to organizētājos publiskajos pasākumos, nesniedzot tiem "
                  "intervijas un neļaujot sevi filmēt\n"
                  "•Nepiedalies nelikumīgās vēlēšanās, referendumos vai tautas nobalsošanās",
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
                  "Ja izvēlies pretoties, tev ir tiesības:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Īstenot bruņotu pretestību (t.sk. sabotāžu, kaitnieciskas darbības) pret ienaidnieka spēkiem NBS sastāvā\n"
                "•Īstenot pilsonisku nepakļaušanos - piemēram, okupācijas varas izdotu likumu neievērošanu, atteikšanos "
                "dienēt un strādāt to labā, masveida streiku rīkošanu\n"
                "•Sniegt atbalstu pretošanās kustībai",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Evakuācija:",
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
                  "Ja atbildīgie dienesti izziņojuši evakuāciju:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Uzmanīgi ieklausies paziņojumā par evakuācijas norisi, iegaumē un piefiksē evakuācijas "
                "virzienu, galamērki vai pulcēšanās vietu.\n"
                "•Visur līdzi nem savu ID vai pasi.\n"
                "•Ja vari, pirms evakuācijas atslēdz savam mājoklim gāzes, elektrības un "
                "ūdens padevi, aiztaisi logus, aizslēdz durvis.\n"
                "•Izmanto maršrutus, kurus rekomendē dienesti un nepārvietojies pa nepazīstamiem celiem.\n"
                "•Ja nav iespējams izmantot savu transportlīdzekli, dodies uz tuvāko norādīto"
                " evakuācijas pulcēšanās vietu.\n"
                "•Evakuācijas gadījumā paziņo par to tuviniekiem.\n"
                "•Ņem līdzi ārkārtas gadījumu somu.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Ņem vērā:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Necenties atgriezties mājās, kamēr atbildīgie dienesti nav to atļāvuši\n"
                "•Nevalkā paramilitāru apģērbu, kamuflāžas formu vai militarizētas somasja neesi dienestā.\n"
                "•Bez vajadzības netuvojies, neprovocē un nefilmē neidentificētus bruņotus cilvēkus, "
                "nepacel no zemes pamestus ieročus vai aizdomīgus priekšmetus.\n"
                "•Nemēģini paša spēkiem pārvietot nesprāgušos lādiņus, mīnas vai atspējot "
                "improvizētos spridzekļus.\n"
                "•Neizplati informāciju (fotogrāfijas, video, tekstus) par Nacionālajiem bruņotajiem "
                "spēkiem un sabiedroto spēku pārvietošanos, atrašanās vietām un pozīcijām.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
