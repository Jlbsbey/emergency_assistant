import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TsunamiPage extends StatefulWidget {
  @override
  State<TsunamiPage> createState() => _TsunamiPageState();
}

class _TsunamiPageState extends State<TsunamiPage> {
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
            'Cunami',
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Cunami laikā:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Nedodieties tuvu krastam, lai novērotu cunami. Ja to var redzēt, tad jūs esat pārāk tuvu, lai izbēgtu to. \n"
                "•Ja ir cunami un jūs nevarat nokļūt augstāk, palieciet tur, kur esat pasargāti no ūdens. Vislabāk atrasties tajā mājas galā, kas vērsta pret iekšzemi. \n"
                "•Bieži cunami notiek vairākos viļņos, kuras var rasties ar dažu minūšu intervālu, bet var arī būt ar vienas stundas intervālu. \n"
                "•Novērojiet cunami un klausiet vietējo amatpersonu brīdinājumus vai norādījumus. Ja esat drošībā, kad atnāk pirmais cunami vilnis, palieciet vietā, līdz varas iestādes paziņo, ka viss ir kārtībā. \n"
                "•Pēc cunami trāpījumiem var nākties saskarties ar plūdiem. Plūdi var būt bīstami staigāšanai vai braukšanai. Pirms kaut kur braukt vai iet, vislabāk uzmanīgi uzklausīt glābšanas dienesta darbiniekus, kuri koordinēs evakuācijas plānus. \n"
                "•Jāapzinās tādi riski kā hipotermija no auksta ūdens vai slīkšana no tekoša ūdens.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
