import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TsunamiRUPage extends StatefulWidget {
  @override
  State<TsunamiRUPage> createState() => _TsunamiRUPageState();
}

class _TsunamiRUPageState extends State<TsunamiRUPage> {
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
            'Цунами',
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
                  "Во время цунами:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Не подходите близко к берегу, чтобы наблюдать за цунами. Если вы видите его, значит, вы находитесь слишком близко, чтобы спастись от него. \n"
                "•Если идет цунами и вы не можете выбраться на возвышенность, оставайтесь там, где вы защищены от воды. Лучше всего находиться в конце дома, обращенного вглубь материка.\n"
                "•Цунами часто происходит несколькими волнами, которые могут возникать с интервалом в несколько минут, но могут быть и с интервалом в один час.\n"
                "•Следите за цунами и слушайте предупреждения или указания местных властей. Если вы находитесь в безопасности, когда придет первая волна цунами, оставайтесь на месте, пока власти не скажут, что все в порядке.\n"
                "•После цунами вы можете столкнуться с наводнением. Наводнение может быть опасным для пешеходов и водителей. Прежде чем куда-то ехать или идти, лучше всего внимательно выслушать спасателей, которые будут координировать планы эвакуации.\n"
                "•Помните о таких опасностях, как переохлаждение от холодной воды или утопление от текущей воды.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
