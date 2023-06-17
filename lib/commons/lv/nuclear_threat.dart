import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NuclearPage extends StatelessWidget {
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
            'Kodoldraudi',
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
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Ricība kodolapdraudējuma gadījumā:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
              child: Text(
                "•Ja atrodieties ārpus telpām, kad notiek detonācija, pēc iespējas īsākā laikā "
                "paslēpies no sprādziena aiz visa, kas varētu nodrošināt aizsardzību(piemēram, ēkas, zemienes)\n"
                "•Dodieties iekšā tuvākajā ēkā. Ja iespējams, izvēlieties dzelzsbetona vai ķieģeļu ēku\n"
                "•Aizveriet ēkas logus(ja tādi palikuši), nevēdiniet telpas, neizmantojiet kondicionieri.\n"
                "•Ēkā dodieties uz mājas pagrabu, ja tā nav - izvairieties no augšējiem stāviem un ārsienām.\n"
                "•Atbrīvojieties no apģērba, nomazgā ķermeni ar ziepēm un ūdeni.\n"
                "•Palieciet iekšteklpās vismaz 24 stundas. Sakari var būt traucēti, tāpēc sekojiet līdzi paziņojumiem radio.\n"
                "•Lietojiet tikai iepakoto pārtiku, nesmēķējiet, nelietojiet ūdeno no atklātām ūdenstilpnēm.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
