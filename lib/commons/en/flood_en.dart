import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FloodENPage extends StatelessWidget {
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
            'Наводнение',
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
            const ExpansionTile(
              title: Text(
                'Кратко и конкретно',
                style: TextStyle(fontSize: 20),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text('•Если существует риск наводнения:'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text(
                        '•Обратитесь в самоуправление, чтобы узнать, находитесь ли вы в группе риска.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text(
                        '•Если это так, приготовьтесь к эвакуации: перенесите все из подвала и первого этажа наверх, позаботьтесь'
                        ' о пожилых людях, зафиксируйте имущество во дворе.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text(
                        '•В случае эвакуации отключите отопление, электричество и газ, закройте все, что можно.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text('•Сообщите своей семье об эвакуации.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Если наводнение произошло неожиданно и нет возможности эвакуироваться:'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Если вашему здоровью или жизни угрожает опасность, звоните 112.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Переместитесь на крышу или на более высокие этажи.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Если наводнение происходит ночью, используйте свет фонаря, чтобы сигнализировать спасателям о своем местонахождении.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Если существует риск наводнения и вы можете эвакуироваться:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 8.0),
              child: Text(
                "•Обратитесь в местные органы власти, чтобы узнать, находитесь ли вы в зоне, подверженной наводнениям.\n"
                "•Слушайте метеорологические предупреждения, следите за ситуацией вблизи вашего дома и информируйте соседей.\n"
                "•Узнайте и сохраните в своем мобильном телефоне и записной книжке номера телефонов, по которым следует звонить, чтобы сообщить о наводнении и получить помощь - номера телефонов самоцправления и аварийных служб.\n"
                "•Если вы находитесь в районе, подверженном риску наводнения, позаботьтесь о пожилых людях, детях, инвалидах и больных, найдя на это время более безопасное место для проживания у родственников или друзей. При необходимости обратитесь за помощью к местным властям.\n"
                "•Знайте, куда эвакуировать домашний скот и домашних животных и как их кормить в случае необходимости. Если это невозможно, своевременно обратитесь за помощью к местным властям.\n"
                "•Чтобы уменьшить ущерб от наводнения, переместите вещи из подвалов и первых этажей на верхние этажи или чердаки, закрепите вещи во дворе и возле дома. Подготовьте вещи, которые вы возьмете с собой при эвакуации, так как дом может затопить в кратчайшие сроки.\n"
                "•Подготовьте транспортные средства (автомобили, тракторы и т.д.) и плавучие средства (лодки, плоты и т.д.), которые будут использоваться для эвакуации.\n"
                "•Покидая дом и хозяйственные постройки, отключите электро и газоснабжение, местные отопительные приборы и оборудование, закройте окна, двери, люки и ставни.\n"
                "•В случае эвакуации оповестите своих родственников.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Если неожиданно случилось наводнение и нет возможности эвакуироваться:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 8, top: 8),
              child: Text(
                '•Если вашему здоровью или жизни угрожает опасность, позвоните в экстренные службы по телефону 112.\n'
                '•Переместитесь на верхние этажи или крышу здания. Если наводнение началось ночью, используйте световой сигнал, чтобы сообщить спасателям о своем местонахождении.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 8),
              child: Text(
                'Помните, что если вас попросили эвакуироваться и вы отказались это сделать, вы должны подтвердить свой отказ в письменном виде, тем самым приняв на себя ответственность за любые последствия. Если объявлена чрезвычайная ситуация, может быть введена принудительная эвакуация.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
