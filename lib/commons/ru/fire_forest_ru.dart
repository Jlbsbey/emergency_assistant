import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FireForestRUPage extends StatefulWidget {
  @override
  State<FireForestRUPage> createState() => _FireForestRUPageState();
}

class _FireForestRUPageState extends State<FireForestRUPage> {
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
          'Пожар в лесу',
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
                  title: Text(
                      '•Если пожар достаточно мал, постарайтесь немедленно его потушить.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      '•Если пожар не удается потушить, убегайте от огня.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      '•Двигайтесь перпендикулярно направлению распространения огня.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      '•Если отбежать от огня невозможно, погрузитесь в воду или накройте себя мокрой одеждой.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      '•Если вы находитесь на лесной лужайке, прижмитесь ближе к земле.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Покидая место происшествия, позвоните по телефону 112.'),
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
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Text(
                    "Во-первых, существует 3 типа лесных пожаров:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Торфяной пожар:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8.0),
                child: Text(
                  "Торфяные пожары продвигаются медленно, несколько метров в день. Они особенно опасны из-за неожиданных "
                  "всплесков огня из подземного очага и того, что его кромка не всегда видна и можно провалиться в "
                  "горящий торф. Поэтому во время пожара торфяники следует обходить стороной, а при необходимости "
                  "передвигаться по торфяному полю только группой, причем первый человек в группе должен проверять землю "
                  "шестом, как будто идет по тонкому льду. Признаком подземного пожара является то, что земля горячая и "
                  "из почвы идет дым.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Низовой пожар:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
                child: Text(
                  'При низовом пожаре (90% всех случаев) сгорают нижние части деревьев, трава, валежник и корни. '
                  'Скорость распространения огня составляет от 1 до 3 метров в минуту, высота пламени - от полуметра '
                  'до полутора метров. При скорости распространения 3-4 метра в минуту пожар становится большим'
                  ' за 10-14 часов.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Верховой пожар:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
                child: Text(
                  'Верховой пожар возможен при сильном ветре: огонь движется через полог деревьев со скоростью '
                  'от 5 до 100 метров в минуту и более. Ветер поднимает горящие ветки и искры, которые воспламеняют '
                  'лес на десятки метров вперед и создают новые очаги возгорания.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Во-вторых, что если в лесу случился пожар?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Порядок действий:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 24.0, right: 8, top: 8, bottom: h),
                child: Text(
                  '•Если пожар маленький, то вы должны попытаться немедленно потушить его, ударяя по пламени ветками или покрывалом. Удары следует '
                  'наносить наискосок в сторону сгоревшего участка.\n'
                  '•Если пожар слишком большой для тушения, немедленно предупредите окружающих и поспешите покинуть место пожара. '
                  'Двигайтесь перпендикулярно направлению распространения огня к дороге, лесополосе, полю или берегу '
                  'водоема.\n'
                  '•Если нет возможности покинуть место пожара и поблизости есть вода, погрузитесь в нее или накройте '
                  'себя мокрой одеждой. Если вы находитесь в лесной опушке, прижмитесь как можно ближе к земле, где '
                  'воздух менее задымлен.\n'
                  '•Когда вы окажетесь в безопасном месте, позвоните по номеру 112, чтобы сообщить о лесном пожаре.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
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
} /*




*/
