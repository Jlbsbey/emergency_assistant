import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FireBuildingRUPage extends StatelessWidget {
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
            'Пожар в здании',
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
                    title: Text('•Если вы можете выбраться из комнаты:'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text('•Бегите наружу ни о чем не думая'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text(
                        '•Всегда пользуйтесь только лестницей. Никогда не пользуйтесь лифтом.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text('•Держитесь за перила лестницы.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text(
                        '•Когда вы окажетесь в безопасности, позвоните в пожарно-спасательную службу.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Если вы не можете выбраться из помещения:'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Если вы чувствуете, что дверь горячая, не открывайте ее.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text('•Если дверь горячая, заткните щели.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Если есть телефон и в помещении, в котором вы находитесь, нет дыма, позвоните в пожарно-спасательную службу по номеру 112.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Подползите к окну и немного приоткройте его (ни в коем случае не открывайте до конца!).'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text('•Держитесь низко у окна.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Если возможно, прикройте нос и рот какой-нибудь мокрой тканью.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Если вы находитесь на первом этаже и можете безопасно выбраться через окно, сделайте это.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0, top: 16),
              child: Text(
                "Не паникуйте, так как объективная оценка ситуации и правильный выбор действий повысят ваши шансы "
                "на спасение. Если вы проснулись и обнаружили, что начался пожар, перекатитесь на бок кровати и "
                "ползите к двери. Держась ближе к полу, вам, возможно, удастся спастись. Ползите к двери в комнату. "
                "Постарайтесь нащупать дверь рукой. Не пытайтесь захватить одежду или ценные вещи.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Если вы можете выбраться из комнаты:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 8.0),
              child: Text(
                "Если при ощупывании двери вам кажется, что она не горячая, немного приоткройте ее и проверьте, "
                "нет ли дыма и огня снаружи. Выходя из помещения, закройте дверь, это уменьшит распространение огня и "
                "защитит ваше имущество. Не забудьте взять ключи. Если все пути эвакуации закрыты и вы не можете "
                "покинуть здание, вам понадобится ключ, чтобы вернуться в свою квартиру, которая станет вашим самым "
                "надежным убежищем.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 8, top: 8),
              child: Text(
                '•Не пытайтесь найти место, где он горит. Потерянное вами драгоценное время может оказаться решающим для вашего спасения.\n'
                '•Не задерживайтесь на лестничных клетках и в коридорах, размышляя, что делать. Покиньте дом как можно скорее. Вы должны знать, какие коридоры в доме ведут в тупики, старайтесь избегать их.\n'
                '•Всегда пользуйтесь только лестницей. Никогда не пользуйтесь лифтом.\n'
                '•Ожидайте паники вокруг. Держитесь за перила лестницы, это поможет вам удержаться, если на лестничной клетке возникнет суматоха.\n'
                '•Не пытайтесь встретить всех внутри, прежде чем покинуть здание, поскольку каждая минута драгоценна.\n'
                '•Когда вы окажетесь в безопасности, позвоните в пожарно-спасательную службу(112). Не считайте само собой разумеющимся, что какой то из соседей уже сделал это. Не кладите трубку, пока диспетчеры не получат всю необходимую информацию.\n'
                '•Не возвращайтесь в дом, пока пожарные не дадут разрешение.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Если вы не можете выбраться из комнаты:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 8, top: 8),
              child: Text(
                '•Если при ощупывании двери вы чувствуете, что она горячая, не открывайте ее. Это может означать, что за '
                'дверью находится огонь. Если вы откроете дверь, пламя немедленно проникнет в помещение. Закрытая дверь '
                'может служить экраном от огня и защитить вас до прибытия спасателей.\n'
                '•Если дверь горячая, заткните щели. Для этого лучше всего подойдут влажные полотенца, одеяла. Также '
                'пригодятся простыни, одежда.\n'
                '•Если у вас есть телефон и в комнате, где вы находитесь, нет дыма, позвоните по номеру 112.\n'
                '•Подползите к окну и немного приоткройте его. Если вы откроете окно до конца, вы создадите сквозняк,'
                ' который будет способствовать проникновению дыма в комнату.\n'
                '•Держитесь ниже у окна, это позволит вам дышать свежим воздухом снаружи и избежать медленного заполнения комнаты дымом.\n'
                '•Если возможно, прикройте нос и рот каким-нибудь мокрым материалом, это отфильтрует дым и облегчит дыхание.\n'
                '•Только в случае крайней необходимости открывайте окно полностью или разбивайте стекло. В этом случае дым может'
                ' проникнуть в помещение и снаружи дома. Кроме того, стекло будет разбито, и вы уже не сможете закрыть окно.\n'
                '•Если вы находитесь на первом этаже и можете безопасно выбраться наружу, сделайте это.\n'
                '•Если вы находитесь выше первого этажа, лучше воздержаться от прыжка. Многие люди, которые могли бы '
                'пережить пожар, дождавшись помощи в своей комнате, погибли, прыгнув с опасной высоты.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "Как привлечь внимание, если вы не можете выйти из комнаты:",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 8, top: 8, bottom: 8),
              child: Text(
                '•Шумите, чтобы дать другим понять, где вы находитесь. Для этого лучше всего постучать каким-либо предметом, а не кричать.\n'
                '•Размахивание полотенцем или простыней через окно привлечет внимание к вашему местонахождению.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
} /*




*/
