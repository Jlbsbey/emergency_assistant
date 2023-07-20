import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmergencyItemsRUPage extends StatefulWidget {
  @override
  State<EmergencyItemsRUPage> createState() => _EmergencyItemsRUPageState();
}

class _EmergencyItemsRUPageState extends State<EmergencyItemsRUPage> {
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
          'Эвакуация и тревожный \nчемоданчик',
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
                "Что делать, если мне нужно эвакуироваться?",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 8.0), //•
            child: Text(
              "•Внимательно слушайте объявление об эвакуации, запоминайте и следуйте направлению "
              "эвакуации, пункту назначения или месту сбора.\n"
              "•По возможности используйте собственный автомобиль и двигайтесь в указанном направлении "
              "эвакуации к месту назначения или к заранее выбранному месту укрытия, совпадающему с направлением "
              "эвакуации.\n"
              "•Если нет возможности воспользоваться собственным транспортным средством, "
              "отправляйтесь в ближайший назначенный пункт сбора эвакуирующихся.\n"
              "•В случае эвакуации оповестите своих близких.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "Что нужно взять с собой при эвакуации?",
                style: TextStyle(color: Colors.red, fontSize: 25),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 8.0),
            child: Text(
              "Если вам необходимо быстро и временно эвакуироваться, возьмите документы, "
              "удостоверяющие личность (паспорт, удостоверение личности), деньги, банковские карты, "
              "мобильный телефон, зарядное устройство, портативную рацию с батарейками и лекарства, "
              "если вам необходимо принимать их регулярно. В случае длительной эвакуации возьмите с собой тревожный чемоданчик.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "Что такое тревожный чемоданчик и что нужно в него класть?",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 8.0),
            child: Text(
              "Тревожный чемоданчик содержит предметы, которые понадобятся человеку или семье в случае "
              "длительной и прогнозируемой эвакуации, а также в случае отключения коммунальных услуг "
              "(газа, электричества, воды). Используйте этот список и подготовьте свою сумку заранее. В чемоданчик положите:",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 0),
            child: Text(
              "•Копии важных документов (паспорт или удостоверение личности, водительские права, свидетельство о"
              " регистрации транспортного средства и т.д.) в полиэтиленовой упаковке. Держите при себе оригиналы"
              " документов, удостоверяющих личность.\n"
              "•Небольшая сумма денег. Все остальные наличные деньги и банковские карты держите при себе.\n"
              "•Портативное радио, спички или зажигалки, фонарик, батарейки.\n"
              "•Универсальный складной нож, ложка, небьющаяся миска и кружка.\n"
              "•Лента, бечевка, нитки, иголка, ножницы, бумага и канцелярские принадлежности.\n"
              "•Аптечка первой помощи.\n"
              "•Одежда, запасное нижнее белье и удобная обувь.\n"
              "•Спальный мешок или одеяло, походный коврик, желательно палатка.\n"
              "•Предметы гигиены, полотенце, туалетная бумага, одноразовые салфетки.\n"
              "•Продукты питания, которые можно употреблять в неприготовленном виде и с длительным сроком "
              "хранения - сухие супы, консервы, печенье, сладости с высоким содержанием калорий.\n"
              "•Питьевая вода на несколько дней (желательно в пластиковых бутылках).\n",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 8, bottom: h),
            child: Text(
              "Помните: по возможности отключите подачу газа и электричества в дом перед эвакуацией.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
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
                label: Text("Наверх"),
              ),
            ),
    );
  }
}
