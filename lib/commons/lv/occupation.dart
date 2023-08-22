import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OccupationPage extends StatefulWidget {
  @override
  State<OccupationPage> createState() => _OccupationPageState();
}

class _OccupationPageState extends State<OccupationPage> {
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
        controller: _scrollController,
        child: Column(children: <Widget>[
          const ExpansionTile(
            title: Text(
              'Īsumā',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Evakuējieties uz to valsts daļu, ko kontrolē NBS vai NATO apvienotie spēki'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Turpiniet ievērot Latvijas Republikas likumus'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Nesadarbojieties ar okupācijas varu:'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text('•Nošķirieties no viņu lēmumiem un darbībām'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Nepiedalieties to organizētajos publiskajos pasākumos, nesniedzoiet tiem intervijas un neļaujiett sevi filmēt'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Nepiedalieties nelikumīgās vēlēšanās, referendumos vai tautas nobalsošanās'),
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
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
                    "•Evakuējieties uz to valsts daļu, ko kontrolē NBS\n"
                    "•Turpiniet ievērot Latvijas Republikas likumus\n"
                    "•Nesadarbojieties ar okupācijas varu:",
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
                    "•Noškirieties no viņu lēmumiem un darbībām\n"
                    "•Nepiedalieties to organizētājos publiskajos pasākumos, nesniedzot tiem "
                    "intervijas un neļaujot sevi filmēt\n"
                    "•Nepiedalieties nelikumīgās vēlēšanās, referendumos vai tautas nobalsošanās",
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
                    "Ja izvēlieties pretoties, jums ir tiesības:",
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
                  "•Uzmanīgi ieklausieties paziņojumā par evakuācijas norisi, iegaumējiet un piefiksējiet evakuācijas "
                  "virzienu, galamērķi vai pulcēšanās vietu.\n"
                  "•Visur līdzi ņemiet savu ID vai pasi.\n"
                  "•Ja variet, pirms evakuācijas atslēdziet savām mājoklim gāzes, elektrības un "
                  "ūdens padevi, aiztaisiet logus, aizslēdziet durvis.\n"
                  "•Izmantojiet maršrutus, kurus rekomendē dienesti un nepārvietojieties pa nepazīstamiem celiem.\n"
                  "•Ja nav iespējams izmantot savu transportlīdzekli, dodieties uz tuvāko norādīto"
                  " evakuācijas pulcēšanās vietu.\n"
                  "•Evakuācijas gadījumā paziņojiet par to tuviniekiem.\n"
                  "•Ņemiet līdzi ārkārtas gadījumu somu.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Text(
                    "Ņemiet vērā:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.0, right: 8.0, bottom: h),
                child: Text(
                  "•Necentieties atgriezties mājās, kamēr atbildīgie dienesti nav to atļāvuši\n"
                  "•Nevelciet paramilitāru apģērbu, kamuflāžas formu vai militarizētas somas, ja neesat dienestā.\n"
                  "•Bez vajadzības netuvojieties, neprovocējiet un nefilmējiet neidentificētus bruņotus cilvēkus, "
                  "nepaceliet no zemes pamestus ieročus vai aizdomīgus priekšmetus.\n"
                  "•Nemēģiniet paša spēkiem pārvietot nesprāgušos lādiņus, mīnas vai atspējot "
                  "improvizētos spridzekļus.\n"
                  "•Neizplatiet informāciju (fotogrāfijas, video, tekstus) par Nacionālajiem bruņotajiem "
                  "spēkiem un sabiedroto spēku pārvietošanos, atrašanās vietām un pozīcijām.",
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
