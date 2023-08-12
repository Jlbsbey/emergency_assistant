import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FireForestPage extends StatefulWidget {
  @override
  State<FireForestPage> createState() => _FireForestPageState();
}

class _FireForestPageState extends State<FireForestPage> {
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.06;
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
          'Ugunsgrēks mežā',
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
        controller: _scrollController,
        child: Column(children: <Widget>[
          const ExpansionTile(
            title: Text(
              'Īsumā',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      '•Ja ugunsgrēks ir pietiekami mazs, uzreiz meģiniet to nodzēst.'),
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
          ExpansionTile(
            title: Text(
              'Plašāk',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            initiallyExpanded: true,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
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
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
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
                  "Kūdras ugunsgrēki pārvietojas lēni, pāris metrus diennaktī. "
                  "Tie ir īpaši bīstami ar negaidītiem uguns izrāvieniem no pazemes pavarda un to, "
                  "ka tā mala ne vienmēr ir pamanāma un var ielūzt izdegušajā kūdrā. Tāpēc ugunsgrēkā "
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
                  'Skrējuguna ugunsgrēkā (tie ir 90% no visiem gadījumiem) deg koku apakšējās daļas, zāle,'
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
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Vainaguguns:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
                child: Text(
                  'Vainaguguņa ugunsgrēks iespējams stiprā vētrā: uguns pa koku vainagiem virzās ar '
                  'ātrumu no 5 līdz 100 un vairāk metriem minūtē. Vējš izdemolē degošus zarus un dzirksteles, kas '
                  'aizdedzina mežu desmitiem metru priekšā un rada jaunus ugunsgrēka perēkļus.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Otrkārt, ko darīt, ja mežā ir ugunsgrēks?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Darbību kartība:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 25.0, right: 8, top: 8, bottom: h),
                child: Text(
                  '•Ja ugunsgrēks ir diezgan mazs, tad uzreiz jāmeģina to nodzēst, sitot liesmas ar zariem vai segu. Sitieni jāveic slīpi izdegušā laukuma virzienā.\n'
                  '•Ja ugunsgrēks ir pārāk liels dzēšanai, nekavējoties jābrīdina citi un steidzīgi jāatstāj ugunsgrēka vieta. Perpendikulāri uguns izplatīšanās virzienam jādodas uz ceļu, meža stigu, lauku vai ūdenskrātuves krastu.\n'
                  '•Ja aiziet no uguns nav iespējams un tuvumā ir ūdens, tad jāiegremdējas tajā vai jāapsedzas ar samitrinātām drēbēm. Ja atrodaties meža laukumiņā, jānoliecas pēc iespējas tuvāk zemei, kur gaiss ir mazāk sadūmots.\n'
                  '•Nokļūstot drošā vietā, jāpaziņo par meža ugunsgrēku, zvanot pa tālruni 112',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ]),
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.04,
              child: ElevatedButton.icon(
                onPressed: _scrollToTop,
                icon: Icon(Icons.arrow_upward),
                label: Text("Uz augšu"),
              ),
            ),
    );
  }
}
