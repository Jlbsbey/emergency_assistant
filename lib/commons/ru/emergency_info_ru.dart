import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmergencyInfoRUPage extends StatefulWidget {
  @override
  State<EmergencyInfoRUPage> createState() => _EmergencyInfoRUPageState();
}

class _EmergencyInfoRUPageState extends State<EmergencyInfoRUPage> {
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
            'Информирование и \nпредупреждение жителей',
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
                  "Как я узнаю, что нахожусь в опасности?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0), //•
              child: Text(
                "•Включите радио или телевизор, чтобы узнать, что произошло и что делать дальше.\n"
                "•Кроме того, в социальных сетях можно следить за государственными службами и получать оттуда информацию.\n"
                "•Соблюдайте и следуйте указаниям экстренных служб.\n"
                "•Не выключайте радио или телевизор и следуйте дальнейшим объявлениям и инструкциям.\n"
                "•Не звоните в экстренные службы без необходимости, чтобы получить более ''особую'' информацию о случившемся.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Что делать, если там, где я нахожусь, я не слышу сирен?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
              child: Text(
                "В случае чрезвычайной ситуации аварийные службы также могут производить оповещение населения"
                ", используя аварийные автомобили и громкоговорители.\n"
                "Помните: сирены включаются также при объявлении чрезвычайного, исключительного положения или мобилизации.\n"
                "Регулярно проверяются сирены оповещения населения, включая их на 3 минуты.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
