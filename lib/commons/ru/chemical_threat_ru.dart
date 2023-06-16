import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChemicalRUPage extends StatelessWidget {
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
            'Химическая атака',
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
                  "Что делать в случае химической атаки:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "На химическую атаку может указывать наличие подозрительного дыма, газа или капель, запах или раздражающее ощущение "
                "в дыхательных путях вас или других людей, находящихся поблизости. Если вы столкнулись с такой ситуацией, порядок "
                "действий должен быть следующим:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Если вы находитесь в помещении, закройте окна и систему кондиционирования.\n"
                "•Если возможно, выбирайте помещения без окон.\n"
                "•На улице немедленно прикройте рот и нос влажной тканью.\n"
                "•Как можно быстрее покиньте защищенное место, двигаясь перпендикулярно потоку ветра (так, чтобы ветер дул с боков).\n"
                "•Окажите помощь пострадавшим, но не возвращайтесь в укрытие.\n"
                "•Избавьтесь от придатка, вымойте тело водой с мылом.\n"
                "•Дождитесь помощи и следуйте указаниям властей. Не отправляйтесь в больницу или домой самовольно.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
