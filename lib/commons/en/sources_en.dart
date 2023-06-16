import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class SourceENPage extends StatelessWidget {
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
            'Информация \nо приложении',
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
            child: Column(children: [
          const ExpansionTile(
            title: Text(
              'Ссылки',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                  title: Text(
                    "https://www.fs.usda.gov/visit/know-before-you-go/if-you-get-lost",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  leading: Text(
                    "https://www.sargs.lv/lv/tema/72stundas-",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://lt72.lt/?lang=en",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://www.vugd.gov.lv/lv/ka-rikoties-meza-ugunsgreka-gadij uma",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://42.mchs.gov.ru/deyatelnost/poleznaya-informaciya/pozharoopasnyy-period/pamyatki/pravila-povedeniya-v-sluchae-vozniknoveniya-lesnogo-pozhara",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://www.vugd.gov.lv/lv/riciba-ugunsgreka-gadijuma",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://jauns.lv/raksts/zinas/490508-bumbu-patvertnes-kur-latvija-slepties-kodolkara-gadijuma",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://www.lsm.lv/raksts/zinas/latvija/riciba-krizes-situacijas-ka-rikoties-kodoldraudu-gadijuma.a459134/",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://kubnews.ru/obshchestvo/2022/11/11/chto-delat-pri-yadernom-vzryve-eti-deystviya-mogut-zashchitit-ot-radiatsii-i-spasti-vam-zhizn-/",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://www.la.lv/pretosanas-atbalsts-nesadarbosanas",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://95.mchs.gov.ru/deyatelnost/poleznaya-informaciya/pravila-povedeniya-v-chs/pravila-povedeniya-pri-prirodnyh-chrezvychaynyh-situaciyah/opolzen",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://mchs.gov.ru/deyatelnost/bezopasnost-grazhdan/kak-pravilno-vyzvat-skoruyu_5",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://вдпо.рф/article/43",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://klopici.ru/2019/08/10370/#:~:text=Сообщите%20о%20характере%20вашего%20вызова,отвечать%20на%20вопросы%20оператора%20детально.",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://mchs.gov.ru/deyatelnost/bezopasnost-grazhdan/utechka-bytovogo-gaza_4#:~:text=Почувствовав%20в%20помещении%20запах%20газа,не%20включайте%20свет%20и%20электроприборы.",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://lg.lv/ru/o-nas/cto-delat-esli-vy-pocuvstvovali-zapah-gaza",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://mchs.gov.ru/deyatelnost/bezopasnost-grazhdan/utechka-bytovogo-gaza_9",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://m.travelnews.lv/?pid=64559",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://hitnet.lv/2023/03/ko-darit-zemestrices-laika/",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://www.travelers.com/resources/weather/hurricanes/hurricane-survival-guide",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://lg.lv/par-mums/riciba-sajutot-gazes-smaku",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://www.nmpd.gov.lv/lv/dzivnieku-izraisiti-nelaimes-gadijumi",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
              ListTile(
                  title: Text(
                    "https://www.vugd.gov.lv/lv/ka-rikoties-kad-zvani-uz-talruna-numuru-112",
                    style: TextStyle(fontSize: 14),
                  ),
                  visualDensity: VisualDensity(vertical: -4)),
            ],
          ),
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Авторы:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Программист: Никита Смориго",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 8.0),
                child: Text(
                  "•Telegram: @zelenovvsky",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, right: 8.0),
                  child: Text(
                    "•Instagram: ",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                InkWell(
                  child: Text("@zelenovvsky",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () => launch("https://instagram.com/zelenovvsky"),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Дизайнер: Диана Иванова",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 8.0),
                child: Text(
                  "•Telegram: @lahonte",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, right: 8.0),
                  child: Text(
                    "•VK: ",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                InkWell(
                  child: Text("Ra~",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () => launch("https://vk.com/public203419612"),
                ),
              ],
            ),
          ]),
        ])));
  }
}
