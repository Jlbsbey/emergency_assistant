import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FireBuildingPage extends StatefulWidget {
  @override
  State<FireBuildingPage> createState() => _FireBuildingPageState();
}

class _FireBuildingPageState extends State<FireBuildingPage> {
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
          'Ugunsgrēks ēkā',
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
                  title: Text('•Ja varat izkļūt no telpas:'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text('•Bēdziet arā nedomajot ne par ko'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•Vienmēr izmantojiet tikai kāpnes. Nekādā gadījumā neizmantojiet liftu.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text('•Turieties pie kāpņu margām'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•Kad esat nokļuvuši drošībā, zvaniet Valsts ugunsdzēsības un glābšanas dienestam.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Ja nevarat izkļūt no telpas:'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Ja, jūtat, ka durvis ir karstas, neveriet tās vaļā.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text('•Ja durvis ir karstas, aizbāziet spraugas.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Ja ir pieejams telefons un telpā, kurā atrodaties nav dūmu, zvaniet uz tālruni 112.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Rāpojiet pie loga un mazliet paveriet to(nekādā gadījumā nevēriet to pilnībā!).'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text('•Turieties zemu pie loga.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Ja iespējams, aizsedziet degunu un muti ar kādu samitrinātu materiālu.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Ja atrodaties pirmajā stāvā un varat pa logu izkļūt drošībā – dariet to.'),
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
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0, top: 0),
                child: Text(
                  "Nekrītiet panikā, jo objektīvs situācijas novērtējums un pareizas rīcības izvēle palielina Jūsu iespējas izglābties. Ja pamostaties un konstatējat, ka izcēlies ugunsgrēks, pārvelieties pāri gultas malai un rāpojiet uz durvju pusi. Turoties tuvāk grīdai Jums iespējams paglābties no bojāejas. Rāpojiet uz istabas durvju pusi. Mēģiniet uztaustīt durvis ar roku. Necentieties paņemt kādas drēbes vai vērtslietas.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Ja varat izkļūt no telpas:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8.0),
                child: Text(
                  "•Ja, uztaustījuši durvis, jūtat, ka tās nav karstas, mazliet paveriet tās un pārliecinieties, vai ārpusē nav dūmi un uguns. Kad atstājat istabu, aizveriet durvis, tas mazinās uguns izplatību un aizsargās Jūsu īpašumu. Neaizmirstiet paņemt atslēgas. Ja visi evakuācijas ceļi būs slēgti un pamest ēku nevarēsiet, Jums vajadzēs atslēgu, lai atgrieztos dzīvoklī, kas kļūs par drošāko patvēruma vietu.\n"
                  "•Nemēģiniet meklēt, kurā vietā deg. Vērtīgais laiks, ko tādējādi zaudēsiet, var būt izšķirošs, lai paspētu glābties.\n"
                  "•Nekavējieties kāpņu telpās un gaiteņos, domājot, ko darīt. Pametiet māju pēc iespējas ātrāk. Jums jāzina, kuri mājas gaiteņi ved strupceļā, centieties izvairīties no tiem.\n"
                  "•Vienmēr izmantojiet tikai kāpnes. Nekādā gadījumā neizmantojiet liftu.\n"
                  "•Rēķinieties ar to, ka visapkārt būs panika. Tāpēc turieties pie kāpņu margām, tas palīdzēs Jums noturēties, ja kāpņu telpā būs drūzma.\n"
                  "•Pirms atstājat ēku, nemēģiniet iekštelpās satikt visus tuviniekus, jo dārga ir katra minūte.\n"
                  "•Kad esat nokļuvuši drošībā, zvaniet Valsts ugunsdzēsības un glābšanas dienestam. Neuzskatiet par pašsaprotamu, ka to jau būs izdarījis kāds no kaimiņiem. Nenolieciet klausuli, kamēr dispečeri nav saņēmuši visu viņiem nepieciešamo informāciju.\n"
                  "•Neejiet atpakaļ mājā, kamēr ugunsdzēsēji to nav atļāvuši.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Ja Jūs nevarat izkļūt no telpas:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 8, top: 8),
                child: Text(
                  '•Ja, uztaustījuši durvis, jūtat, ka tās ir karstas, neveriet tās vaļā. Tas var nozīmēt, '
                  'ka aiz durvīm plosās uguns. Atverot durvis, liesmas uzreiz iekļūs istabā. Aizvērtās durvis var būt '
                  'par aizsegu no uguns un pasargāt Jūs, kamēr ierodas glābēji.\n'
                  '•Ja durvis ir karstas, aizbāziet spraugas. Šim nolūkam vislabāk kalpos mitri dvieļi, segas. Noderēs arī palagi, drēbes.\n'
                  '•Ja ir pieejams telefons un telpā, kurā atrodaties nav dūmu, zvaniet uz tālruni 112.\n'
                  '•Ja ir pieejams telefons un telpā, kurā atrodaties nav dūmu, zvaniet uz tālruni 112.\n'
                  '•Rāpojiet pie loga un mazliet paveriet to. Atverot logu pilnīgi, Jūs radīsiet caurvēju, kas veicinās '
                  'dūmu pieplūdumu istabā.\n'
                  '•Turieties zemu pie loga, tas ļaus Jums elpot svaigu gaisu no ārpuses un izvairīties no dūmiem, kas lēnām'
                  ' piepildīs istabu.\n'
                  '•Ja iespējams, aizsedziet degunu un muti ar kādu samitrinātu materiālu, tas filtrēs dūmus un elpot būs '
                  'vieglāk.\n'
                  '•Tikai galējas nepieciešamības gadījumā atveriet logu pilnīgi vai izsitiet stiklu. Tādā gadījumā dūmi var '
                  'iekļūt istabā arī no mājas ārpuses. Turklāt, stikls būs izsists un Jums vairs nebūs iespēju logu '
                  'aiztaisīt.\n'
                  '•Ja atrodaties pirmajā stāvā un varat pa logu izkļūt drošībā – dariet to.\n'
                  '•Ja atrodieties augstāk par pirmo stāvu, labāk atturieties no lēmuma lēkt. Daudzi cilvēki, kuri būtu '
                  'varējuši ugunsgrēkā izdzīvot, gaidot pēc palīdzības savā istabā, ir gājuši bojā, lecot no bīstamiem '
                  'augstumiem.\n',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Kā pievērst uzmanību, ja nevarat izkļūt no istabas:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 25.0, right: 8, top: 8, bottom: h),
                child: Text(
                  '•Radiet troksni, lai pārējie zinātu, kur Jūs atrodaties. To vislabāk darīt, klauvējot ar kādu priekšmetu, nevis kliedzot.\n'
                  '•Vicinot pa logu dvieli vai palagu, Jūs pievērsīsiet uzmanību savai atrašanās vietai.',
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
} /*




*/
