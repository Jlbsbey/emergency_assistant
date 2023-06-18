import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OccupationRUPage extends StatelessWidget {
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
            'Оккупация',
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
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Эвакуируйтесь в часть страны, контролируемую вооруженными силами вашей страны.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Продолжайте соблюдать законы своей страны'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Не сотрудничайте с оккупационной властью:'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text('•Отстранитесь от их решений и действий'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Не участвуйте в организованных ими публичных мероприятиях, не давайте им интервью и не позволяйте снимать себя на камеру'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Не участвуйте в незаконных выборах, референдумах и голосованиях'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Сопротивление:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Даже если в результате военных действий контроль над частью территории будет временно утрачен, "
                "вооруженные силы будут продолжать защищать страну, оказывая сопротивление до восстановления независимости.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Если вы находитесь на оккупированной территории:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 8.0),
                child: Text(
                  "•Эвакуируйтесь в часть страны, контролируемую вооруженными силами своей страны.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 8.0),
                child: Text(
                  "•Продолжать соблюдать законы своей страны.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 8.0),
                child: Text(
                  "•Не сотрудничайте с оккупационной властью:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 48.0, right: 8.0),
                child: Text(
                  "•Отстранитесь от их решений и действий.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 48.0, right: 8.0),
                child: Text(
                  "•Не участвуйте в организованных ими публичных мероприятиях, не давайте им интервью и не позволяйте снимать себя на камеру.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 48.0, right: 8.0),
                child: Text(
                  "•Не участвуйте в незаконных выборах, референдумах и голосованиях.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Если вы решите сопротивляться, у вас есть право на это:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Оказывать вооруженное сопротивление (включая саботаж, подрывные действия) против противника в составе вооруженных сил своей страны.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Воплощать гражданское неповиновение - например, неподчинение законам, изданным оккупационными властями, "
                "отказ служить и работать на них, организация массовых забастовок",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 8.0),
                child: Text(
                  "•Поддерживать сопротивление",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Эвакуация:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Если власти издали распоряжение об эвакуации:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Внимательно слушайте объявление об эвакуации, запоминайте и записывайте направление эвакуации, пункт назначения или сбора.\n"
                "•Носите с собой удостоверение личности, куда бы вы ни пошли.\n"
                "•Если есть возможность, перед эвакуацией отключите газ, электричество и воду в доме, закройте окна и заприте двери.\n"
                "•Пользуйтесь маршрутами, рекомендованными госслужбами, и не ездите по незнакомым маршрутам.\n"
                "•Если вы не можете воспользоваться собственным автомобилем, отправляйтесь в ближайший назначенный пункт сбора эвакуирующихся.\n"
                "•В случае эвакуации оповестите родственников.\n"
                "•Возьмите с собой тревожный чемоданчик.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Обратите внимание:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Не пытайтесь вернуться домой до получения разрешения от властей.\n"
                "•Не носите военизированную одежду, камуфляжную форму или военизированные сумки, когда находитесь вне службы.\n"
                "•Не приближайтесь без необходимости к неопознанным вооруженным людям, не провоцируйте их и не снимайте на камеру, "
                "не подбирайте брошенное оружие или подозрительные предметы.\n"
                "•Не пытайтесь самостоятельно перемещать неразорвавшиеся боеприпасы, мины или обезвреживать самодельные взрывные устройства.\n"
                "•Не распространяйте информацию (фотографии, видео, тексты) о передвижениях, местах дислокации и позициях "
                "вооруженных сил своей страны.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
