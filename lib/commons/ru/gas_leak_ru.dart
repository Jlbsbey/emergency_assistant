import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GasLeakRUPage extends StatefulWidget {
  @override
  State<GasLeakRUPage> createState() => _GasLeakRUPageState();
}

class _GasLeakRUPageState extends State<GasLeakRUPage> {
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
          'Утечка газа',
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
          const ExpansionTile(
            title: Text(
              'Кратко',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Позвоните по номеру 112 для получения помощи'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Не допускайте возгорания'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Проветривайте помещения'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Покиньте помещение'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Вызовите медицинскую помощь'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Остановите утечку, перекрыв подачу газа'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Сохраняйте спокойствие'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            height: 1,
          ),
          ExpansionTile(
            title: Text(
              'Развёрнуто',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            initiallyExpanded: true,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Text(
                    "Что может указывать на утечку газа:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
                child: Text(
                  "Наиболее очевидным признаком утечки является запах газа. Поскольку природный газ не имеет запаха, вкуса и "
                  "цвета, для раннего обнаружения утечки в него добавляют специфический пахучий фермент (меркаптан), "
                  "придающий ему сернистый запах (тухлых яиц).\n"
                  "Признаком утечки газа также может плохое самочувствие. В низких концентрациях природный газ может "
                  "вызывать головокружение, головную боль, тошноту и потерю координации. При появлении любого из этих "
                  "симптомов и подозрении на утечку природного газа следует немедленно покинуть помещение. При высоких "
                  "концентрациях в замкнутых пространствах, если вовремя не обнаружить специфический запах газа, "
                  "количество пригодного для дыхания кислорода уменьшается, и возможно удушающее действие природного газа. "
                  "Симптомы: нарушение движений, потеря сознания, рвота. Пострадавший может не почувствовать "
                  "предупреждающих симптомов возможной асфиксии и впасть в глубокий сон (бессознательное состояние), "
                  "который может привести к смерти.\n"
                  "В случае утечки газа у домашних животных также происходят изменения в их самочувствии. Владельцы "
                  "домашних животных должны обращать внимание на следующие признаки: затрудненное дыхание, изменение "
                  "поведения, дезориентация, потеря аппетита, красные или слезящиеся глаза, рвота.\n"
                  "Небольшие утечки газа могут не иметь запаха. Помимо изменения самочувствия, если в "
                  "доме есть утечка, вы можете заметить несколько изменений, требующих внимания:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text(
                    "•Свистящий или шипящий звук вблизи газовой трубы. Иногда при утечке газа возникает низкий, похожий на "
                    "шипение звук. Это означает, что газ уходит довольно быстро, и любой шум, исходящий из газовой "
                    "системы, обычно не является хорошим признаком.\n"
                    "•Белое облако или облако пыли возле газовой трубы. Иногда при утечке газа на улице может образовываться "
                    "мелкий туман. Это происходит из-за утечки газа из подземного трубопровода. Конденсат собирается и "
                    "образует низкую, неестественную дымку вокруг дома\n"
                    "•Поврежденная газовая труба.\n"
                    "•Мёртвые комнатные растения. Утечки газа вредны для всего живого. Растения как производят, так и потребляют"
                    " кислород, поэтому если в помещении его недостаточно, они начнут медленно погибать. Если "
                    "растения в доме внезапно умирают одновременно (при условии, что их поливают по мере необходимости), "
                    "это может быть признаком утечки газа.\n"
                    "•Потребление природного газа стремительно выросло. Обратите внимание на причину, так как газ из газовых "
                    "труб и приборов может просачиваться в дом или на его территорию.",
                    style: TextStyle(fontSize: 16),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Что делать при обнаружении утечки газа:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
                child: Text(
                  "Если произошла утечка газа, важно действовать быстро, но осмотрительно:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 32, bottom: h),
                  child: Text(
                    '•Вызовите помощь. В случае утечки природного газа или при появлении специфического запаха следует '
                    'немедленно позвонить по номеру 112.\n'
                    '•Не допускайте возникновения пожара. Необходимо избегать потенциальных источников воспламенения, '
                    'не допуская искр и открытого пламени. Светильники и другое электрооборудование не следует включать '
                    'и выключать, так как это может вызвать искру и дальнейшее воспламенение.\n'
                    "•Проветривайте помещения. Обеспечьте достаточную вентиляцию закрытых помещений. Открывайте окна и "
                    "двери перед тем, как покинуть помещение.\n"
                    "•Покиньте помещение. Позаботьтесь о своем здоровье и безопасности, а затем о своих ближних. "
                    "Предупредите других жильцов здания об утечке или возможной утечке газа, помогите им выбраться "
                    "из здания и дождитесь аварийной газовой службы на достаточном расстоянии от места утечки.\n"
                    "•И люди, и животные нуждаются в медицинской помощи при возникновении утечки газа. В случае тяжелых"
                    " симптомов вызовите неотложную медицинскую помощь по номеру 112.\n"
                    "•Если это возможно и если это не угрожает вашему здоровью, остановите утечку, перекрыв подачу природного газа путем закрытия вентилей.\n"
                    "•Важно сохранять спокойствие и ставить на первое место собственную безопасность и здоровье, и только потом "
                    "думать о том, как предотвратить или уменьшить последствия утечки газа.",
                    style: TextStyle(fontSize: 16),
                  ))
            ],
          ),
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

/*
ExpansionTile(
title: Text(
'Full guide',
style: TextStyle(fontSize: 20),
),
controlAffinity: ListTileControlAffinity.leading,
initiallyExpanded: true,
children: <Widget>[

],
),

floatingActionButton: _showBackToTopButton == false
          ? null
          : SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.04,
              child: ElevatedButton.icon(
                onPressed: _scrollToTop,
                icon: Icon(Icons.arrow_upward),
                label: Text("On top"),
              ),
            ),
*/
