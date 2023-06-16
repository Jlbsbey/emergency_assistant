import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ArtilleryENPage extends StatelessWidget {
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
            'Артобстрел',
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
                        '•Если вы находитесь на улице, падайте где стоите и оставайтесь на месте, пока все не закончится.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Если вы находитесь внутри помещения, зайдите в комнату без окон и несущих стен и переждите там.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Ни в коем случае не бегите по улице и не позволяйте этого делать другим.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Если вы находитесь достаточно близко к подвалу, идите туда.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Как звучат выстрелы?",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Звуки настоящих прилётов — это тяжёлые, с характерным треском при попаданиях в дома, и более глухие, если снаряд попадает в землю."
                "82-миллиметровые мины, самые маленькие из используемых, издают при полёте характерный свист, 120-миллиметровые — шипение, реактивные танковые снаряды — ни с чем не сравнимый вой."
                "«Грады» и прочие реактивные снаряды вообще не слышны во время полёта. Исходящий залп «Града» напоминает звук высыпающегося на стол гороха.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Что делать при первых звуках снарядов?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Падайте, где стоите, и переждите обстрел там. Меняйте местоположение только в крайнем случае. Слушайте и одновременно присматривайте "
                  "место для укрытия. Вам нужно поймать ритм: звук залпа, время полёта снаряда и падение. Считайте секунды от залпа до падения и "
                  "начинайте бежать сразу после прилёта. Вам нужно упасть за пару секунд до расчётного времени очередного попадания. Если работает "
                  "два и более орудий, считайте от последнего.\n"
                  "Откройте рот и закройте уши руками. Это позволит избежать контузии и сохранит слух при особо близких взрывах. Если случилось "
                  "так, что после прилётов вы перестали слышать, не пугайтесь. Обычно, если нет физических повреждений, слух восстанавливается в "
                  "течение 3–7 дней. Закрывайте глаза, чтобы уберечь их от пыли и каменной крошки.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Где укрыться?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Чем ниже вы будете по отношению к поверхности земли, тем лучше. Подземные переходы, подвалы, люки коллекторов "
                  "(при условии, что оттуда не валит пар), канавы, траншеи и даже просто высокий бордюр. Подойдёт любой рельеф "
                  "местности, который сможет защитить вас от осколков. Во время взрыва осколки разлетаются вверх и в стороны по "
                  "касательной, поэтому чем ниже относительно уровня земли вы заляжете, тем выше шансы остаться невредимым.",
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
                  "Ни в коем случае не прячьтесь у стен зданий. При попадании в стену вас может ранить обломками кирпичей, бетона или вовсе завалить.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "То же касается окон и витрин: одно небольших размеров окно превращается после взрыва в ведро мелких осколков, часть которых вылетает "
                  "на улицу и может серьёзно ранить вас. \n"
                  "Избегайте различных нагромождений из ящиков, контейнеров и прочих предметов, которыми вас может завалить даже от ударной волны. "
                  "Не стоит залезать и под машины: они никак не спасут вас и не защитят от осколков.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Где безопаснее в помещении?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Самым безопасным местом во время обстрелов (оно же место вашего ночлега) должна стать внутренняя комната, желательно с "
                  "несущими стенами, без окон или с окнами, выходящими на стену другого дома. Позаботьтесь о коврике или каремате на полу.",
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
                  "По возможности накрывайтесь сверху толстым одеялом — это дополнительная защита как от осколков на излёте, так и от "
                  "каменной крошки и стекла. "
                  "Не тратьте время на спуск в подвал, если вы живёте на верхних этажах. Лучше ложитесь в проёме двери или на лестничной площадке. "
                  "Снаряд с одинаковой вероятностью может попасть как в девятый, так и в третий этаж в тот момент, когда вы будете бежать по лестнице. "
                  "Не рискуйте из-за бесполезных предвижений.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Что делать, если стрельба застала в дороге?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Если вы передвигаетесь на машине по линии соприкосновения — не закрывайте окна. Это позволит контролировать ситуацию, в случае "
                  "чего быстро остановиться и выйти из машины."
                  "Даже если на улице суровые морозы, держите окна авто открытыми, пока не покинете зону обстрелов.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Как справиться с эмоциями?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
                child: Text(
                  "Старайтесь успокоиться. Атеисты могут считать до ста, верующие — молиться. И те и другие — стараться ровно и глубоко дышать.\n"
                  "Что бы ни происходило вокруг, главное — не паниковать. Не надо бежать, особенно если вокруг люди. Кто-то может последовать "
                  "вашему глупому примеру. Очень часто женщины в таких ситуациях теряются, могут застыть на месте или побежать. Повалите их "
                  "на землю (плевать на грязь, лужи и мусор под ногами) и не давайте двигаться.\n"
                  "Если вы попали под обстрел с девушкой или ребёнком, крепко держите их за руку и не давайте выпрямиться и побежать. Не бойтесь "
                  "отвесить пару пощёчин, чтобы привести в чувства.\n"
                  "Если совсем невтерпёж — можете кричать. Под обстрелами страшно всем, исключений нет.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ]),
        ));
  }
}
