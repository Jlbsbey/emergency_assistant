import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstHelpRUPage extends StatefulWidget {
  @override
  State<FirstHelpRUPage> createState() => _FirstHelpRUPageState();
}

class _FirstHelpRUPageState extends State<FirstHelpRUPage> {
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
          'Первая помощь',
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
                "Что делать, если человек потерял сознание?",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 8.0),
            child: Text(
              "•Проверьте сознание пострадавшего - громко говорите и осторожно трясите пострадавшего за "
              "плечо: если пострадавший не реагирует/не отвечает, возможно, он потерял сознание.\n"
              "•Позовите на помощь, уложите пострадавшего на спину и освободите дыхательные пути, наклонив "
              "голову и приподняв подбородок (смотри 1 рис.)\n"
              "•Не отпуская голову, проверьте и оцените дыхание с помощью зрения, слуха и ощущений "
              "в течение 10 секунд. Попросите кого-нибудь вызвать скорую помощь по телефону 112.\n"
              "•Если пострадавший дышит нормально (вы слышите не менее 2 вдохов/выдохов за 10 секунд) - "
              "уложите пострадавшего в устойчивое боковое положение (смотри 2 рис.)\n"
              "•Если пострадавший не дышит или дышит медленно, шумно или с едва различимым дыханием, снимите "
              "всю одежду с груди пострадавшего, положите руки на центр грудной клетки и начните массаж сердца "
              "(смотри 3 рис.), сделав 30 массажей сердца (темп 100-120 раз в минуту; глубина 5-6 см).\n"
              '•Освободите дыхательные пути, наклонив голову и подняв подбородок, и сделайте 2 вдоха "рот в рот" '
              '(смотри 4 рис.). Дыхательный объем является объемом при спокойном выдохе. Наблюдайте за пассивными '
              'выдохами пострадавшего.\n'
              "•Рекомендуется использовать респираторную маску с односторонним клапаном. Если у вас нет такой маски и вы"
              " не можете провести вентиляцию, вы можете провести только массаж сердца. Это может быть менее "
              "эффективно, но это лучше, чем ничего не делать.\n"
              "•Продолжайте массаж и дыхание в соотношении 30:2 (30 сердечных массажей : 2 вдоха), пока не приедет "
              "скорая помощь и не возьмет реанимацию на себя, пока пострадавший не начнет двигаться, не откроет глаза "
              "и не начнет нормально дышать, или пока не иссякнут ваши силы.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image(image: AssetImage('assets/1234.png'))),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "Что делать при сильном кровотечении?",
                style: TextStyle(color: Colors.red, fontSize: 25),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
            child: Text(
              "•Наденьте одноразовые резиновые перчатки или другой водонепроницаемый материал "
              "(например, пластиковый пакет).\n"
              "•Снимите с кровоточащего участка одежду.\n"
              "•Закройте рану пальцем, рукой или кулаком, по возможности используя марлевый компресс или "
              "чистый кусок одежды (смотри 5 рис.).\n"
              "•Уложите пострадавшего в лежачее положение так, чтобы кровоточащая область была сверху. "
              "Убедитесь, что кровотечение остановилось.\n"
              "•Если кровотечение продолжается, прижмите рану сильнее, по возможности наложив другой "
              "марлевый компресс или кусок ткани поверх имеющегося материала.\n"
              "•Вызовите скорую помощь по телефону 112 и держите рану закрытой до их приезда.\n"
              "•Не позволяйте пострадавшему охлаждаться, защищайте его от воздействия окружающей среды.\n"
              "•Ухаживайте за пострадавшим и успокаивайте его.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: 130,
                child: Image(image: AssetImage('assets/screen5.png'))),
          ),
          Padding(padding: EdgeInsets.only(bottom: h))
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
