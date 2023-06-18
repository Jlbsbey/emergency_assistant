import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnimalENPage extends StatelessWidget {
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
            'Animal bite',
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
                'Briefly and concretely',
                style: TextStyle(fontSize: 20),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              children: <Widget>[
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•It is better to call 112.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•If the wound is not bleeding much, bandage it and go to the hospital emergency room.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•If you are bitten by a snake, call 112 in any case.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•Calm the victim and give him some water.'),
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
                  "Wounds from animal bites:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Various wild and domestic animals can transmit rabies, go to a hospital emergency room or emergency room. Note that vaccination immediately "
                "after an animal bite protects against rabies. \nHow to help an injured person?",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 32),
                child: Text(
                  "•If the wound is not bleeding much, wash it with soap and water.\n"
                  "•Bandage the wound.\n"
                  "•If the bleeding is not severe, the victim should go to the emergency room of a hospital on his/her own or with the help of a relative. "
                  "If he or she is bleeding heavily, call 112 for emergency medical assistance.",
                  style: TextStyle(fontSize: 16),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Snakebite:",
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
                  "What to do if a snake bites?",
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
                  "If you are bitten by a snake, the bite will hurt and swelling may occur. In more severe cases, a snake bite can cause serious heart "
                  "problems, shortness of breath, nausea, vomiting and diarrhea. The swollen area of the bitten body may swell noticeably and the "
                  "skin may turn bluish purple.",
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
                  "If a snake bites, you have to take the worst possible scenario, that the snake is poisonous. In that case:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 32, right: 8, bottom: 8),
                child: Text(
                  "•Call an ambulance at 112, as the victim needs to be treated as soon as possible.\n"
                  "•Lay the victim down, help him/her to calm down.\n"
                  "•Try not to move or rub the bitten part of the body so the poison doesn't spread as quickly.\n"
                  "•Do not let the victim cool/protect him/her from the environment.\n"
                  "•If possible, give more water to keep the body hydrated.\n"
                  "•You can put something cold to the bite site to relieve the itching and constrict the blood vessels.\n"
                  "•Never apply a tourniquet or bandage, do not suck venom with your mouth, and do not cut or burn the bite area.\n"
                  "•Do not give any medication, as it is not known how the medicine will react with the snake venom.",
                  style: TextStyle(fontSize: 16),
                )),
          ]),
        ));
  }
}
