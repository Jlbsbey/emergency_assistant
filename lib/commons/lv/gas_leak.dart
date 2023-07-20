import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GasLeakPage extends StatefulWidget {
  @override
  State<GasLeakPage> createState() => _GasLeakPageState();
}

class _GasLeakPageState extends State<GasLeakPage> {
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
          'Gāzes noplūde',
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
              'Īsi',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      '•Izsauc palīdzību 114 vai 112 (114 dabasgāzei un 112 propan-butānam un "balonu gāzei")'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Nepieļauj uguns uzliesmojumu'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Vedini telpas'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Pamet telpu'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Izsauc medicinisko palīdzību'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Apturi noplūdi, pārtraucot gāzes padevi'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Saglabā mieru'),
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
              'Izvērsti',
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
                    "Kas var liecināt par gāzes noplūdi:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
                child: Text(
                  "Acīmredzamākā noplūdes pazīme ir gāzes smaka. Tā kā dabasgāze ir bez smaržas, bez garšas un bez krāsas, "
                  "noplūdes savlaicīgai konstatēšanai tai pievieno specifisku aromātu – odorantu (merkaptānu), kas piešķir "
                  "gāzei sēra smaržai (sapuvušas olas) līdzīgu smaku.\n"
                  "Par gāzes noplūdi var liecināt arī pašsajūtas pasliktināšanās. Zemā koncentrācijā dabasgāze var izsaukt reiboni, "
                  "galvassāpes, nelabumu un koordinācijas zudumu. Ja tiek pamanīti kādi no šiem simptomiem un rodas aizdomas par "
                  "dabasgāzes noplūdi, nekavējoties ir jādodas ārā no telpām. Augstā koncentrācijā slēgtās telpās, ja savlaicīgi "
                  "nav konstatēta gāzes specifiskā smarža, samazināsies ieelpojamā skābekļa daudzums un iespējama dabasgāzes "
                  "smacējoša iedarbība. Simptomi: kustību traucējumi, bezsamaņa, vemšana. Cietušais var nejust brīdinājuma "
                  "simptomus par iespējamu nosmakšanu, tāpēc var ieslīgst dziļā miegā (bezsamaņā), kas var beigties ar nāvi.\n"
                  "Gāzes noplūdes gadījumā arī mājdzīvnieki izjūt pašsajūtas izmaiņas. Mājdzīvnieku īpašniekiem vajadzētu "
                  "pievērst uzmanību šādām pazīmēm: elpošanas grūtības, uzvedības izmaiņas, dezorientācija, apetītes zudums, "
                  "sarkanas vai asarojošas acis, vemšana.\n"
                  "Nelielām gāzes noplūdēm var nebūt smakas. Papildu pašsajūtas izmaiņām, ja mājā ir izveidojusies noplūde, var pamanīt vairākas izmaiņas, kam jāpievērš uzmanība:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text(
                    "•Svilpojoša vai svilpjoša skaņa gāzes vada tuvumā. Dažkārt gāzes noplūde rada zemu, šņākoņai līdzīgu skaņu. "
                    "Tas nozīmē, ka gāze izplūst diezgan ātri un jebkurš troksnis, kas nāk no gāzes sistēmas, parasti nav laba zīme\n"
                    "•Balts mākonis vai putekļu mākonis gāzes vada tuvumā. Dažreiz gāzes noplūde ārpus telpām var radīt smalku miglu. "
                    "To izraisa gāze, kas izplūst no pazemes padeves līnijas. Kondensāts savāc un veido zemu, nedabisku dūmaku"
                    " ap māju\n"
                    "•Bojāta gāzes caurule\n"
                    "•Beigti telpaugi. Gāzes noplūde ir kaitīga visām dzīvajām būtnēm. Augi gan ražo, gan patērē skābekli, tāpēc, "
                    "ja telpā tas ir nepietiekami, tie lēnām sāks mirt. Ja pēkšņi mājās novietotie augi nokalst vienlaikus "
                    "(pie nosacījuma, ka tie tiek aplaistīti pēc vajadzības), tas var liecināt par gāzes noplūdi.\n"
                    "•Ir strauji pieaudzis dabasgāzes patēriņš. Pievērsiet uzmanību cēlonim, jo iespējams, gāze no gāzes"
                    " vadiem un ierīcēm ieplūst mājā vai tās teritorijā.",
                    style: TextStyle(fontSize: 16),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Ko darīt, ja konstatēta gāzes noplūde:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
                child: Text(
                  "Ja ir gāzes noplūde, ir svarīgi rīkoties ātri, bet apdomīgi:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 32, bottom: h),
                  child: Text(
                    '•Izsauc palīdzību. Dabasgāzes noplūdes gadījumā vai sajūtot tās specifisko smaku, nekavējoties jāizsauc gāzes '
                    'avārijas dienests (114) vai Valsts ugunsdzēsības un glābšanas dienestu (112) (114 dabasgāzei un 112 propan-butānam un "balonu gāzei").\n'
                    "•Nepieļauj uguns uzliesmojumu. Jānovērš iespējami uzliesmošanas avoti, nepieļaujot dzirksteles un atklātas "
                    "liesmas rašanos. Noteikti nevajadzētu ieslēgt un izslēgt apgaismojumu un citas elektroiekārtas, jo tas "
                    "var radīt dzirksteli un tālāk aizdegšanos.\n"
                    "•Vedini telpas. Nodrošini slēgtu telpu pietiekamu vēdināšanu. Pirms atstāj telpas, atver logus un durvis.\n"
                    "•Pamet telpas. Jāparūpējas par savu veselību un drošību, un tad par līdzcilvēkiem. Brīdini pārējos ēkas "
                    "iemītniekus par gāzes noplūdi vai iespējamo noplūdi, palīdzi izkļūt no ēkas un sagaidīt gāzes avārijas "
                    "dienestu pietiekamā attālumā no noplūdes vietas.\n"
                    "•Pie gāzes noplūdes saskares gan cilvēkiem, gan dzīvniekiem nepieciešama medicīniska palīdzība. "
                    "Smagu simptomu gadījumā jāizsauc neatliekamā medicīniskā palīdzība, zvanot uz - 112.\n"
                    "•Pēc iespējas, ja tas neapdraud paša veselību, apturiet noplūdi, pārtraucot dabasgāzes padevi, aizverot noslēgierīces.\n"
                    "•Svarīgi ir saglabāt mieru un pirmām kārtām parūpēties par savu drošību un veselību, un tikai tad izvērtēt iespēju novērst vai samazināt gāzes noplūdi.",
                    style: TextStyle(fontSize: 16),
                  ))
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
