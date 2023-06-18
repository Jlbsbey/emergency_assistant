import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FireForestPage extends StatelessWidget {
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
            'Ugunsgrēks mēžā',
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
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text(
                        '•Ja ugunsgrēks ir pitiekami mazs, uzreiz meģiniet to nodzēst.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text(
                        '•Ja uguni nodzēst nav iespējams, ejiet prom no ugunsgrēka.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text(
                        '•Virzieties perpendikulāri uguns izplatīšanās virzienam.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text(
                        '•Ja aiziet no uguns nav iespējams, iegremdējieties ūdenī vai apsedzieties ar samitrinātām drēbēm.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text(
                        '•Ja Jūs esat meža laukumiņā, noliecieties tuvāk zemei. '),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Izejot laukā no ugunsgrēka vietas zvaniet uz tālruni 112.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 1,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Pirmkārt, ir 3 meža ugunsgrēku veidi:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Kūdras ugunsgrēks/zemdega:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Kūdras ugunsgrēki pārvietojas lēni, vairākus metrus diennaktī. "
                "Tās ir īpaši bīstamas ar negaidītiem uguns izrāvieniem no pazemes pavarda un to, "
                "ka tās mala ne vienmēr ir pamanāma un var ielūzt izdegušajā kūdrā. Tāpēc ugunsgrēkā "
                "jāizvairās no kūdras purviem, bet, ja nepieciešams, pa kūdras lauku jāpārvietojas tikai grupā, "
                "turklāt pirmajam grupā jāpārbauda augsni ar sesti, kā ejot pa plāno ledu. Pazemes ugunsgrēka pazīme"
                " — zeme ir karsta, no augsnes nāk dūmi.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Skrējuguns:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
              child: Text(
                'Skrejuguna ugunsgrēkā (tie ir 90% no visiem gadījumiem) deg koku apakšējās daļas, zāle,'
                ' kritalas, saknes. Izplatības ātrums — no 1 līdz 3 metriem minūtē, liesmu augstums — '
                'no pusmetra līdz pusotram metram. Ar ātrumu 3-4 metri minūtē ugunsgrēks izplešas lielā 10-14 '
                'stundu laikā.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Vainaguguns:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
              child: Text(
                'Vainaguguna ugunsgrēks iespējams stiprā vētrā: uguns pa koku vainagiem virzās ar '
                'ātrumu no 5 līdz 100 un vairāk metriem minūtē. Vējš izdemolē degošus zarus un dzirksteles, kas '
                'aizdedzina mežu desmitiem metru priekšā un rada jaunus ugunsgrēka perēkļus.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Otrkārt, ko darīt ja mežā ir ugunsgrēks?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Darbību kartība:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 8, top: 8, bottom: 8),
              child: Text(
                '•Ja ugunsgrēks ir diezgan mazs, tad uzreiz jāmeģina to nodzēst, sitot liesmas ar zariem vai segu. Sitieni jāveic slīpi izdegušā laukuma virzienā.\n'
                '•Ja ugunsgrēks ir parāk liels dzēšanai, nekavējoties jābrīdina citi un steidzīgi jāatstāj ugunsgrēka vieta. Perpendikulāri uguns izplatīšanās virzienam jādodas uz ceļu, meža stigu, lauku vai ūdenskrātuves krastu.\n'
                '•Ja aiziet no uguns nav iespējams un tuvumā ir ūdens, tad jāiegremdējas tajā vai jāapsedzas ar samitrinātām drēbēm. Ja atrodaties meža laukumiņā, jānoliecas pēc iespējas tuvāk zemei, kur gaiss ir mazāk sadūmots.\n'
                '•Nokļūstot drošā vietā, jāpaziņo par meža ugunsgrēku, zvanot pa tālruni 112',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
} /*




*/
