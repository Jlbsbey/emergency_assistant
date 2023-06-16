import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NuclearENPage extends StatelessWidget {
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
            'Ядерная угроза',
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
                  "Действия в случае ядерной угрозы:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "•Если вы находитесь на улице в момент взрыва, как можно скорее спрячьтесь от взрыва за всем, "
                "что может обеспечить защиту (например, за зданиями, низменными участками)\n"
                "•Зайдите в ближайшее здание. Если возможно, выберите железобетонное или кирпичное здание.\n"
                "•Закройте окна здания (если таковые остались), не проветривайте помещения, не используйте кондиционеры.\n"
                "•Внутри здания зайдите в подвал дома, если подвала нет, избегайте верхних этажей и внешних стен.\n"
                "•Избавьтесь от одежды, вымойте тело водой с мылом.\n"
                "•Оставайтесь в помещении не менее 24 часов. Связь может быть нарушена, поэтому следите за объявлениями по радио.\n"
                "•Употребляйте только упакованные продукты, не курите, не берите воду из открытых водоемов.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
