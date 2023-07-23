import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnimalPage extends StatefulWidget {
  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
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
                  child: Text('•Labāk zvaniet 113'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Ja brūce stipri neasiņo, pārsej to un dodies uz slimnīcas uzņemšanas nodaļu'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Ja iekodusi čūska obligāti zvani 113'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Nomierini cietušo un dod viņam padzerties sķidrumu'),
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Text(
                    "Dzīvnieku kodumu brūces:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Meža dzīvnieki un mājdzīvnieki var pārnēsāt trakumsērgu, tāpēc pēc to kodiena dodies uz slimnīcu uzņemšanas nodaļu vai arī traumpunktu. "
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
                    "Ja iekodusi čūska, koduma vietā būs sāpes un varēs redzēt pietūkumu. Smagākos gadījumos pēc odzes "
                    "kodiena cietušajam var būt nopietni sirdsdarbības traucējumi, elpas trūkums, slikta dūša, vemšana, "
                    "caureja. Pietūkums sakostajā ķermeņa vietā var izteikti palielināties, āda var kļūt zilgani violeta.",
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
                  padding: EdgeInsets.only(left: 32, right: 8, bottom: h),
                  child: Text(
                    "•Jāizsauc neatliekamā medicīniskā palīdzība, zvanot 113, jo cietušajam palīdzība jāsaņem pēc iespējas ātrāk.\n"
                    "•Cietušais jānogulda, jāpalīdz viņam nomierināties.\n"
                    "•Jācenšas nekustināt un neberzēt sakosto ķermeņa daļu, lai inde tik strauji neizplatītos. Tas ir būtiski, "
                    "jo kustības paātrina asinsriti, līdz ar to arī indes izplatīšanos.\n"
                    "•Neļaut atdzist cietušajam/ pasargā to no apkārtējās vides.\n"
                    "•Ja iespējams, jādod pastiprināti dzert ūdeni, lai nodrošinātu organismam šķidrumu.\n"
                    "•Uz koduma vietas var uzlikt kaut ko aukstu, lai mazinātu niezi un sašaurinātos asinsvadi."
                    " Nekādā gadījumā nedrīkst likt žņaugu vai pārsējus, sūkt indi ar muti, griezt vai piededzināt koduma vietu.\n"
                    "•Nedrīkst dot nekādus medikamentus, jo nav zināms, kā zāles reaģēs ar čūskas indi.",
                    style: TextStyle(fontSize: 16),
                  )),
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
