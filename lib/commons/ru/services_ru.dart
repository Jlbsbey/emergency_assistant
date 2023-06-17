import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HowToServicesRUPage extends StatefulWidget {
  @override
  State<HowToServicesRUPage> createState() => _HowToServicesRUPageState();
}

class _HowToServicesRUPageState extends State<HowToServicesRUPage> {
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
            'Вызов служб',
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
                    "Что надо говорить?",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Если вы произошел несчастный случай и вам необходимо позвонить на номер 112, "
                "постарайтесь сначала успокоиться. Подождите, пока вас соединят с контактным центром. Будьте готовы предоставить следующую информацию:",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Укажите точный адрес или опишите место события.\n"
                "•Кратко расскажите, что произошло.\n"
                "•Постарайтесь вспомнить все о происшествии как можно точнее. \n"
                "•Назовите свое имя и номер телефона, когда вас спросит диспетчер. \n"
                "•Помните! Не прекращайте разговор первым!",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Сохраняйте спокойствие и отвечайте на вопросы диспетчера.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Помни:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Будьте доступны для связи на случай, если диспетчеру понадобится связаться с вами снова.\n"
                "•Конкретные ответы могут ускорить процесс получения помощи.\n"
                "•Ни один вопрос диспетчера не является лишним.\n",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
