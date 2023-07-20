import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstHelpPage extends StatefulWidget {
  @override
  State<FirstHelpPage> createState() => _FirstHelpPageState();
}

class _FirstHelpPageState extends State<FirstHelpPage> {
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
          'Pirmā palīdzība',
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
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "Ko darīt, ja cilvēks ir zaudējis samaņu?",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 8.0),
            child: Text(
              "•Pārbaudi cietušā samaņu - skaļi uzrunā un saudzīgi papurini aiz pleca: ja cietušais "
              "nereaģē/neatbild, tad, iespējams, viņš zaudējis samaņu.\n"
              "•Sauc palīgā un novieto cietušo uz muguras un atbrīvo elpceļus, atliecot galvu un "
              "paceļot zodu (skat. 1. zīm.)\n"
              "•Turot atliektu galvu, pārbaudi un izvērtē elpošanu redzot, dzirdot un jūtot 10 "
              "sekundes. Liec kādam izsaukt neatliekamo medicīnisko palīdzību, zvanot pa "
              "tālruni 112 vai 113.\n"
              "•Ja cietušais elpo normāli (tu dzirdi vismaz 2 ieelpas/izelpas 10 sekunžu laikā) - "
              "novieto cietušo stabilā sānu pozā (skat. 2. zīm.)\n"
              "•Ja cietušais neelpo vai elpo lēni, trokšņaini vai ir jūtama tikko nosakāma elpošana, "
              "atbrīvo cietušā krūškurvi no visa apģērba, rokas novieto krūškurvja vidū un uzsāc "
              "sirds masāžu (skat. 3. zīm.), veicot 30 sirds masāžas (temps 100 -120 reizes "
              "minūtē; dziļums 5 - 6 cm).\n"
              '•Atbrīvo cietušā elpceļus, atliecot galvu un paceļot zodu, un veic 2 elpināšanas '
              '"mute-mutē" (skat. 4. zīm.). Elpināšanas tilpums ir mierīgas izelpas tilpums.'
              'Novēro cietušā pasīvās izelpas.\n'
              "•Elpināšanai ieteicams lietot elpināšanas masku ar vienvirziena vārstuli. Ja tādas "
              "nav un nevari veikt elpināšanu, vari veikt tikai sirds masāžu. Tas var būt mazāk "
              "efektīvi, tomēr labāk nekā nedarīt neko.\n"
              "•Turpini masēt un elpināt attiecībā 30:2 (30 sirds masāžas : 2 elpināšanas) līdz "
              "ierodas neatliekamā medicīniskā palīdzība un pārņem cietušā atdzīvināšanu, "
              "cietušais sāk kustēties, atver acis un sāk normāli elpot vai arī tavi spēki izsīkst.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image(image: AssetImage('assets/1234.png'))),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "Ko man darīt, ja sākusies stipra asiņošana?",
                style: TextStyle(color: Colors.red, fontSize: 25),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
            child: Text(
              "•Uzvelc rokās vienreiz lietojamos gumijas cimdus vai cita ūdens "
              "necaurlaidīga materiāla izstrādājumus (piem., plastikāta maisiņu).\n"
              "•Atbrīvo asiņojošo vietu no apģērba.\n"
              "•Aizspied brūci ar pirkstu, plaukstu vai dūri, ja iespējams, izmantojot marles "
              "kompresi vai tīru drēbes gabalu (skat. 5. zīm.).\n"
              "•Noguldi cietušo guļus ar asiņojošo vietu uz augšu. "
              "Pārliecinies, ka asiņošana ir apturēta.\n"
              "•Ja asiņošana turpinās, piespied brūci stiprāk, ja "
              "iespējams, uzliekot vēl marles kompresi vai drēbes gabalu pa virsu esošajam materiālam.\n"
              "•Izsauc neatliekamo medicīnisko palīdzību,zvanot pa tālruni 112 vai 113, un līdz ierašanās "
              "brīdim turi brūci aizspiestu.\n"
              "•Neļauj atdzist cietušajam, pasargā viņu no apkārtējās vides iedarbības.\n"
              "•Aprūpē un nomierini cietušo.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: 130,
                child: Image(image: AssetImage('assets/screen5.png'))),
          ),
          Padding(padding: EdgeInsets.only(bottom: h)),
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
