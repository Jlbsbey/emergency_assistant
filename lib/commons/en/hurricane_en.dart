import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HurricaneENPage extends StatefulWidget {
  @override
  State<HurricaneENPage> createState() => _HurricaneENPageState();
}

class _HurricaneENPageState extends State<HurricaneENPage> {
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
            'Ураган',
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
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Что делать во время урагана?",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "В первую очередь эвакуируйтесь , если вам приказали это сделать или если вы чувствуете, что оставаться в доме может "
                "быть небезопасно. Если вы остаетесь дома, следуйте этим советам, чтобы помочь себе и своей семье оставаться в "
                "безопасности во время урагана:",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Используйте портативное радио для прослушивания важных обновлений, информации и указаний об урагане.\n"
                "•Не выходите из дома и держитесь подальше от всех окон и стеклянных дверей. Перейдите в безопасное место, "
                "например, во внутреннюю комнату (комнату без окон), кладовку или ванную комнату на нижнем этаже.\n"
                "•Никогда не выходите за пределы своего дома или убежища, пока не получите подтверждение, что ураган миновал этот район. "
                "Глаз бури может создать временное затишье, когда остальная часть урагана все еще приближается.\n"
                "•Если пропало электричество, держите холодильник закрытым, чтобы задержать холодный воздух и предотвратить "
                "порчу скоропортящихся продуктов.\n"
                "•При использовании портативного генератора следуйте всем инструкциям производителя. Генераторы должны быть правильно "
                "заземлены во избежание поражения электрическим током, и их никогда не следует эксплуатировать в закрытых помещениях, "
                "гаражах, подвалах или на открытом воздухе вблизи окон, дверей или вентиляционных отверстий. Поскольку генераторы выделяют "
                "угарный газ (CO), убедитесь, что у вас дома есть работающий детектор CO.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
