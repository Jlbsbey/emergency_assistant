import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EarthquakePage extends StatefulWidget {
  @override
  State<EarthquakePage> createState() => _EarthquakePageState();
}

class _EarthquakePageState extends State<EarthquakePage> {
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
          'Zemestrīce',
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
                  child:
                      Text('•Ja atrodaties iekštelpās, tad palieciet tur.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Ja gatavojat ēst, tad atslēdziet plīti un paslēpieties.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Ja atrodaties ārpusē, pārvietojaties uz atklātu teritoriju, kur krītoši objekti nevarētu Jūs apdraudēt. Pārvietojieties prom no ēkām, elektrības līnijām un kokiem.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Nekādā gadījumā nedrīkst mēģināt izkļūt no ēkas zemestrīces laikā'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Ja jūs atrodaties vietā, kur ir daudz cilvēku, izvairieties no panikas un nesteidzieties uz izeju. Notupieties un apsedziet galvu un kaklu ar rokām un plaukstām.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Ja jūs braucat automašīnā, lēnām samaziniet braukšanas ātrumu un apstājieties ielas malā.'),
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
                    "Ja jūs esat 2 vai 3-stāvīgā ēkā:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Tiklīdz kā sajūtiet pirmo zemes drebēšanu, cenšaties pamest ēku. No brīža, kad sajutīsiet pirmos"
                  " grūdienus, līdz brīdim, kad tie kļūs bīstami ēkai jums būs aptuveni 15 – 20 sekundes.\n"
                  "Ņemiet līdz iepriekš sagatavoto somu un pirmās nepieciešamības priekšmetus. Neizmantojiet liftu, "
                  "bet ejiet pa trepēm, jo zemestrīces laikā lifts var iesprūst kopā ar jums.\n"
                  "Izkļūstot no telpām, atejiet pēc iespējas tālāk no ēkām, stabiem, balkoniem un citiem bīstamiem objektiem, "
                  "kas zemestrīces laikā var uzkrist virsū.\n"
                  "Izvairieties no pārrautiem vadiem un caurulēm. Cenšaties visu laiku atrasties atklātā vietā, saglabājiet"
                  " mieru un gaidiet, kad zemestrīce pilnībā beigsies.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Augstceltnē:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Neļaujieties panikai. Ja atrodaties augstāk par trešo stāvu, jūs varat nepaspēt izkļūt no "
                  "ēkas pirms zemestrīce kļūst bīstama mājas konstrukcijai. Šādā situācijā jums būs mazāka iespēja"
                  " iegūt traumas, ja paliksiet kur esat, un atradīsiet maksimāli drošu vietu.\n"
                  "Iekārtojaties uz grīdas zem izturīga galda, krēsla vai gultas, vislabāk pie iekšējās sienas. "
                  "Ieņemiet embrija pozu. Ja ir iespējams, nosedziet galvu un kaklu ar kaut ko piemērotu, piemēram, "
                  "spilvenu, lai šādi pasargātu sevi no krītošām atlūzām un saplēsta stikla. Ja nav nekā piemērota, "
                  "nosedziet galvu ar savām rokām.\n"
                  "Turieties tālāk no skapjiem, plauktiem vai citām mēbelēm, kas var jums uzkrist. Tāpat izvairieties no "
                  "ārējām sienām, jo tās sabruks pirmās.\n"
                  "Neskatoties uz mītu, ka izturīgu mīksto krēslu vai dīvānu atzveltne var paglābt gadījumos, "
                  "kad iebrūk augšējais stāvs, šī teorija ir kļūdaina. Galvenokārt, tādēļ, ka ir pārāk grūti "
                  "paredzēt kurā vietā notiks iebrukums. Turklāt dīvāns var pasargāt tikai tad, ja griesti iebrūk "
                  "veselās sekcijās un nevis pa gabaliem. Šī iemesla dēļ labāk paslēpties zem izturīga galda vai gultas un "
                  "izmantojiet dīvānu tikai tad, kad nav citu variantu.\n"
                  "Vēl eksistē pieņēmums, ka zemestrīces laikā vajag nostāties durvju atverē. Tas varētu būt patiesi attiecībā uz "
                  "vecām ķieģeļu vai mūra sienām ar koka starpsienu. Tomēr modernās paneļu un karkasa mājās durvju atveres var nebūt"
                  " daudz stiprākas par jebkuru citu ēkas daļu. "
                  "Turklāt galvenais nāves iemesls zemestrīces laikā nav augšējā stāva iebrukšana, bet gan "
                  "traumas dēļ salīdzinoši nelielu atlūzu krišanas, kuros gadījumos durvju atvere nebūs drošs patvērums.\n"
                  "Ja atrodaties virtuvē, uzreiz pēc pirmajām zemestrīces pazīmēm izslēdziet plīti. Tas ir nepieciešams, lai samazinātu "
                  "ugunsgrēka risku. Tomēr, ja līdz plītij ir jāiet salīdzinoši tālu, tad labāk netērēt laiku un paslēpties.\n"
                  "Ja guļat gultā un nevarat paslēpties zem tās, nosedziet sevi ar segām un spilveniem. Ja esat invalīds ratiņkrēslā, "
                  "neaizmirstiet nobloķēt riteņus.\n"
                  "Gaidiet savā slēptuvē kamēr zemestrīce beidzās.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Row(
                  children: [
                    Text(
                      "Ārpus telpām:",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Ārpus telpām zemestrīces laikā ir visdrošāk, tāpēc necentieties iekļūt telpās. "
                  "Stāviet pēc iespējas tālāk no ēkām, degvielas un gāzes cauruļvadiem, kanalizācijas lūkām un "
                  "elektrības līnijām, kas var uzkrist jums virsū. Turklāt nedrīkst atrasties zem balkoniem, arkām un "
                  "citām ēku daļām, jo tās var sabrukt pat tad, ja pati ēka paliek neskarta.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Row(
                  children: [
                    Text(
                      "Automašīnā:",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Apstājaties ceļa malā pēc iespējas tālāk no stabiem, elektrības līnijām, tiltiem un citiem objektiem, "
                  "kas var jums uzkrist. Tāpat nevajag apstāties virs pazemes pārejām, jo zemestrīces laikā tās var iebrukt.\n"
                  "Novelciet stāvbremzi un gaidiet kad zemestrīce beigsies. Nepametiet mašīnu jo tā var sniegt aizsardzību no krītošām lauskām un priekšmetiem.\n"
                  "Neaizmirstiet ieslēgt radio, jo pa to var tikt pārraidīta svarīga informācija. "
                  "Ja uz auto ir uzkritis elektrības vads, zvaniet uz 112 un palieciet mašīnā, kamēr glābēji noņems vadu.\n"
                  "Kad zemestrīce beigsies un varēs turpināt ceļu, uzmanīgi sekojiet vai uz ceļa nav parādījušies šķēršļi. Šādi šķēršļi var būt nokrituši stabi, "
                  "pārplīsuši elektrolīniju vadi, plaisas ceļa segumā, dambju pārāvumu dēļ applūdušas teritorijas, sabrukuši tilti un "
                  "pārvadi.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Row(
                  children: [
                    Text(
                      "Sabiedriskā vietā:",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Ja esat stadionā, teātrī vai citā līdzīgā vietā, neskrieniet uzreiz uz izeju, jo tieši tāda pati doma būs prātā"
                  " visiem pārējiem un pūlis jūs gluži vienkārši var nospiest. "
                  "Palieciet savā vietā, apsēžaties starp krēsliem un nosedziet galvu un kaklu ar rokām, virsjaku vai somu. "
                  "Kad zemestrīce beigsies dodieties prom un uzmanīgi sekojiet tam, lai jūs nenospiež un nekas neuzkrīt jums uz galvas.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Row(
                  children: [
                    Text(
                      "Jūras krastā:",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Teorētiski atklātā jūras krastā tālu prom no ēkām un elektrolīnijām, zemestrīces laikā vajadzētu "
                  "būt droši. Tomēr ja zemestrīce turpinās 20 minūtes vai ilgāk ir steigšus jādodas prom uz kādu augstāku vietu. Tā tas jādara tāpēc, ka zemestrīce var radīt cunami. "
                  "Dodieties dziļāk sauszemē vismaz 3 kilometrus tālu vai uz vietu, kas atrodas vismaz 30 metrus, virs jūras līmeņa. "
                  "Pārvietojieties ātri un ar kājām, lai izvairītos no sastrēgumiem, autoavārijām un citām bīstamām situācijām.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Ko darīt ja esat aprakts zem drupām:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 8.0, bottom: h),
                child: Text(
                  "Ja esat iesprostots zem drupām cenšaties neļauties panikai un kustēties pēc iespējas mazāk, lai nesaceltu putekļus. "
                  "Neveiciet asas kustības pat tad, ja jums ir iespiesta roka vai kāja, un necenšaties arī atbrīvoties, jo tas var "
                  "veicināt tālāku ēkas brukšanu. "
                  "Nosedziet degunu un muti ar lakatiņu vai kādu apģērba gabalu, lai nesaelpotos putekļus. Ja pie jums ir palicis "
                  "telefons, izmantojiet to, lai piezvanītu uz 112 un izsauktu glābējus.\n"
                  "Ja izmantojat telefonu, lai apgaismotu apkārtni, tad periodiski to izslēdziet, lai taupītu akumulatora enerģiju. "
                  "Nekuriniet uguni, jo dzirksteles var izraisīt sprādzienu, ja kaut kur tuvumā ir gāzes noplūde vai izlieta degviela. "
                  "Turklāt degšana patērē skābekli, un tas noslēgtā telpā var būt bīstami. "
                  "Ja iespējams, nostipriniet virs sevis griestus ar pie rokas esošiem priekšmetiem, piemēram, dēļiem vai mēbeļu "
                  "atliekām.\n"
                  "Ja atrodaties zem drupām jau ilgāku laiku, atceraties, ka ūdeni no poda ūdens tvertnes var dzert un ka "
                  "radiatoru caurules var izmantot, lai paziņotu par savu atrašanās vietu. Taupiet spēkus un neļaujaties "
                  "panikai, atceraties, ka cilvēks bez ēšanas var izturēt ilgāk nekā 2 nedēļas.\n"
                  "Kad ieradīsies glābēji dauziet pa radiatora caurulēm vai sienu, lai šādi pievērstu glābēju uzmanību un "
                  "paziņotu par savu atrašanās vietu. Tomēr nesitiet pārāk spēcīgi, jo tas novest pie tā, ka jums kaut kas "
                  "uzkritīs. Variet grabināt atslēgu saišķi, izmantot savu telefonu vai svilpi, lai ar skaņu paziņotu par "
                  "savu atrašanās vietu. Kliedziet tikai galējas nepieciešamības gadījumā, lai netērētu spēkus un skābekli.\n"
                  "Kad glābēji jūs izdzirdēs un sāks meklēt, nosauciet tiem savu vārdu, izstāstiet par savām traumām, pastāstiet "
                  "kurā ēkas vietā jūs bijāt zemestrīces laikā un ko redzat sev apkārt.",
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
