import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnimalRUPage extends StatelessWidget {
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
            'Укус животного',
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
                    child: Text('•Лучше позвонить по номеру 112.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Если рана не сильно кровоточит, перевяжите ее и обратитесь в приемную больницы.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Если вас укусила змея, в любом случае звоните по номеру 112'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Успокойте пострадавшего и дайте ему немного жидкости(воды).'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 1,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Раны от укусов животных:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Различные дикие и домашние животные могут передавать бешенство, обратитесь в приемный покой больницы "
                "или отделение неотложной помощи. Обратите внимание, что вакцинация сразу после укуса животного "
                "защищает от бешенства.\nКак помочь пострадавшему?",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 32),
                child: Text(
                  "•Если рана не сильно кровоточит, промойте ее водой с мылом\n"
                  "•Перевяжите рану\n"
                  "•Если кровотечение не сильное, пострадавшему следует самостоятельно или с помощью родственника "
                  "обратиться в приемное отделение больницы. В случае сильного кровотечения вызовите неотложную "
                  "медицинскую помощь по телефону 112.",
                  style: TextStyle(fontSize: 16),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Укус змеи:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Что делать, если укусила змея?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Если вас укусила змея, место укуса будет болеть и может появиться отек. В более тяжелых случаях укус "
                  "змеи может вызвать серьезные проблемы с сердцем, одышку, тошноту, рвоту и диарею. Опухший участок "
                  "укушенного тела может заметно увеличиться, кожа может стать синевато-фиолетовой.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Если укусила змея, то нужно брать худший возможный вариант, что змея ядовитая. В этом случае:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 32, right: 8, bottom: 8),
                child: Text(
                  "•Вызовите скорую помощь по номеру 112, так как пострадавшему необходимо оказать помощь как можно скорее.\n"
                  "•Уложите пострадавшего, помогите ему успокоиться.\n"
                  "•Постарайтесь не двигать и не тереть укушенную часть тела, чтобы яд не распространялся так быстро.\n"
                  "•Не позволяйте пострадавшему охлаждаться/защищайте его от воздействия окружающей среды.\n"
                  "•Если возможно, давайте больше воды, чтобы обеспечить организм влагой.\n"
                  "•К месту укуса можно приложить что-нибудь холодное, чтобы снять зуд и сузить кровеносные сосуды.\n"
                  "•Ни в коем случае не накладывайте жгут или повязку, не всасывайте яд в рот, не режьте и не жгите место укуса.\n"
                  "•Нельзя давать никаких лекарств, так как неизвестно, как лекарство будет реагировать со змеиным ядом.",
                  style: TextStyle(fontSize: 16),
                )),
          ]),
        ));
  }
}
