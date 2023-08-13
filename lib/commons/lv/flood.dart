import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FloodPage extends StatefulWidget {
  @override
  State<FloodPage> createState() => _FloodPageState();
}

class _FloodPageState extends State<FloodPage> {
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
          'Plūdi',
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
                  title: Text('•Ja pastāv plūdu draudi:'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•Vērsies pašvaldībā un noskaidro, vai tu esi riska zonā'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•Ja esi, tad sagatavojies evakuācijai: pārnes visu no pagrabstāva un 1. stāva augstāk, aprupējies par veciem cilvēkiem, nostiprini priekšmetus pagalmā.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•Evakuācijas gadījuma atslēdz apkuri, elektroenergījas un gāzes padevi, aizver visu, ko vari.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text('•Paziņo tuviniekiem par evakuāciju.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Ja plūdi ir negaidīti un nav iespējas evakuēties:'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Ja ir apdraudēta tava veselība vai dzivība zvani 112.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text('•Pārvietojies uz jumtu vai augtākiem stāviem.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Ja plūdi sakušies naktī izmanto gaismas signālu, lai glabējiem signalizētu par savu atrašanās vietu.'),
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
                    "Ja pastāv plūdu draudi un var evakuēties:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 8.0),
                child: Text(
                  "•Vērsies savā pašvaldībā un noskaidro, vai tu atrodies plūdu apdraudētajā teritorijā.\n"
                  "•Klausies meteorologu brīdinājumus un seko situācijas attīstībai sava mājokļa tuvumā, informē kaimiņus.\n"
                  "•Noskaidro un saglabā savā mobilajā telefonā un piezīmju grāmatiņā tālruņu numurus, uz kuriem jāzvana, lai ziņotu par "
                  "plūdu sākšanos un saņemtu palīdzību - pašvaldības un operatīvo dienestu tālruņa numurus.\n"
                  "•Ja atrodies plūdu apdraudētā teritorijā, savlaicīgi parūpējies par veciem cilvēkiem, bērniem, invalīdiem un slimniekiem, atrodot "
                  "viņiem šajā laikā drošāku mājvietu pie radiem vai draugiem. Nepieciešamības gadījumā lūdz palīdzību savā pašvaldībā.\n"
                  "•Apzini vietu, kur nepieciešamības gadījumā evakuēt mājlopus, mājdzīvniekus un kā tos nodrošināt ar barību. Ja tādas iespējas nav, "
                  "jau savlaicīgi vērsies pēc palīdzības savā pašvaldībā.\n"
                  "•Lai samazinātu plūdu nodarītos materiālos zaudējumus, pārvieto mantas no pagrabtelpām un pirmajiem stāviem uz augšējiem stāviem vai "
                  "bēniņiem, nostiprini pagalmā un mājas tuvumā esošus priekšmetus. Sagatavo mantas, ko ņemsi līdzi evakuējoties, jo māja var "
                  "applūst īsā laika brīdī.\n"
                  "•Sagatavo evakuācijai izmantojamos transporta līdzekļus (automašīnas, traktorus u.c.) un peldošos līdzekļus (laivas, plostus u.c.).\n"
                  "•Atstājot māju un saimniecības ēkas, atslēdz elektroenerģijas un gāzes padevi, vietējās apkures ierīces un iekārtas, aizver logus, "
                  "durvis, lūkas un slēģus.\n"
                  "•Evakuācijas gadījumā paziņo par to tuviniekiem.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Ja plūdi sākušies negaidīti un nav iespējas evakuēties:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 8, top: 8),
                child: Text(
                  '•Ja apdraudēta tava veselība vai dzivība, zvani Valsts ugunsdzesības un glābšanas dienestam pa tālruni 112.\n'
                  '•Pārvietojies uz ēkas augšējiem stāviem vai jumtu. Ja plūdi sākušies naktī, izmanto gaismas signālu, lai'
                  ' glabējiem signalizētu par savu atrašanas vietu.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: h),
                child: Text(
                  'Atceries, ka saņemot aicinājumu evakuēties un no tā atsakoties, atteikums personai jāapstiprina rakstiski, tādējādi uzņemoties atbildību par iespējamām sekām. Ārkārtējās situācijas izsludināšanas gadījumā var tikt piemērota piespiedu evakuācija.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
