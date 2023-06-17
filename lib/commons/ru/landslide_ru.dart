import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandslideRUPage extends StatelessWidget {
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
            'Оползень',
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
                    title: Text('•Если находитесь дома:'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title:
                        Text('•Занесите в дом все вещи со двора или балкона.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text(
                        '•Уберите из дома все ядовитые и легко воспламеняющиемя вещества.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text('•Перекройте электричество, газ и воду.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text(
                        '•Плотно закройте двери, окна и вентиляционные отверстия.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Если находитесь не дома:'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Перемещайтесь не в противоположну. сторону от оползня, а вбок.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text('•Сообщите соседям о приближающейся беде.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text('•Срочно уйдите с линии опозня.'),
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
                  "Если вы дома:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 8.0),
              child: Text(
                "•Внесите в дом все вещи со двора или с балкона. Если есть возможность, упакуйте вещи, "
                "которые могут пострадать от влаги, в полиэтиленовую плёнку.\n"
                '•Уберите из дома ядовитые и легковоспламеняющиеся вещества. Их можно закопать в саду '
                'или поместить в погреб. Вход в погреб тоже нужно тщательно закрыть.\n'
                '•Перекройте электричество, газ и воду. Выдерните электроприборы из розеток. '
                'Отсоедините газовый баллон, если пользуетесь им.\n'
                '•Плотно закройте двери, окна, вентиляционные отверстия. Это необходимо, чтобы'
                ' потоки грязи и воды не попали в дом.\n'
                'Затем отправляйтесь к пункту организованной эвакуации или покидайте населённый пункт'
                ' на своём автомобиле. Если уезжаете самостоятельно, заранее узнайте безопасный маршрут,'
                ' а также выясните, где найти пункт помощи эвакуированным. \n'
                'Если вас захватил оползень и ваш дом движется вместе с почвой, на которой стоит, нужно '
                'выйти из помещения. Постарайтесь держаться ближе к центру и как можно выше. '
                'Не подходите к краям движущегося участка.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Если вы вне дома:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
              child: Text(
                'Вы можете услышать или грохот камней, когда будете на улице '
                'своего населённого пункта. Возможно, вы окажетесь в горах — один или вместе с группой. '
                'В этих случаях нужно немедленно уйти от приближающегося оползня.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 8, top: 8),
              child: Text(
                '•В посёлке или городе двигайтесь не в противоположную сторону от оползня, а вбок. '
                'Безопасными местами будут склоны гор или другие возвышенности, где нет опасности '
                'селя или оползня. Постарайтесь как можно быстрее добраться до таких участков.\n'
                '•Сообщите о приближающемся бедствии соседям. Если шум разбушевавшейся стихии '
                'застал вас на улице селения или города, говорите об опасности всем, кого '
                'встретите по пути. Возможно, кто-то узнает об обвале или лавине от вас.\n'
                '•В горах срочно уходите с линии движения оползня. Применяйте ту же '
                'тактику — двигайтесь в сторону и вверх. Если вы в низине, немедленно '
                'поднимайтесь на высоту более 50–100 метров. Помните, что во время оползня из '
                'него могут вылетать тяжёлые камни. Большая скорость делает их опасными для жизни, '
                'поэтому постарайтесь не медлить. \nНельзя укрываться в долинах и ущельях.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Что делать, когда оползень закончится:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 8, top: 8, bottom: 8),
              child: Text(
                'Если вы экстренно спасались от стихии и добрались до ближайшего безопасного '
                'места, убедитесь, что угрозы больше нет. После этого возвращайтесь в свой населённый пункт.\n'
                'При работающей связи сообщите близким, что с вами всё в порядке.\n'
                'Затем, если вы хорошо себя чувствуете, помогите спасателям. '
                'Вы можете присоединиться к поиску пострадавших и разбору завалов.'
                'Если вы сами пострадали, обратитесь за помощью.\n'
                'Не входите в дом, пока его не осмотрят специалисты. Они должны убедиться, что несущие '
                'конструкции в порядке. Важно проверить, чтобы в жилье не было утечки газа. Не включайте электричество, '
                'пока не получите подтверждение, что сеть исправна.\n'
                'Продолжайте следить за информацией от экстренных служб. В этом случае '
                'новый катаклизм не застанет вас врасплох.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
