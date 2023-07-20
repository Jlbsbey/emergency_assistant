import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LostDocRUPage extends StatefulWidget {
  @override
  State<LostDocRUPage> createState() => _LostDocRUPageState();
}

class _LostDocRUPageState extends State<LostDocRUPage> {
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
          'Потерял документы \nза границей',
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
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
            child: Text(
              "Что делать, если у меня возникли проблемы с паспортом во время пребывания за границей?",
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 8.0, bottom: h),
            child: Text(
              "Первым делом отправляйтесь в ближайшее отделение полиции и пишите заявление об утере или краже паспорта. Это нужно для того, "
              "чтобы получить справку-подтверждение факта потери документа. Если не владеете языком страны, в которой находитесь, "
              "постарайтесь объяснить ситуацию с помощью Google Переводчика. \n"
              "Затем обратитесь в посольство или консульство своей страны. Получите свидетельство на возвращение или подайте документы на новый "
              "паспорт (если вы за границей надолго или, например, переехали на ПМЖ. Обычно паспорт приходится ждать около трех месяцев. "
              "В консульстве вам сообщат все детали).\n"
              "Если вы в стране не надолго, то нужно получить свидетельство на въезд. Это временный документ, заменяющий загранпаспорт, "
              "если тот утрачен или истек за границей. Свидетельство позволяет пребывать на территории страны, в которой вы находитесь, "
              "а также дает возможность вернуться обратно. О вынужденном транзите через другие страны лучше уточнять у работников "
              "консульства. Свидетельство действует не более 30 дней со дня оформления. И в этот период вам нужно успеть улететь домой."
              "После возвращения обратно необходимо будет обратиться в отдел по делам гражданства, иммиграции и регистрации физических лиц, "
              "сдать свидетельство и получить новый паспорт.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
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
