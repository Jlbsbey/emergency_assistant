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
            'Shelling',
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
                    child: Text(
                        '•If you are on the street, fall where you are standing and stay where you are until it is over.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•If you are indoors, go into a room without windows or load-bearing walls and wait there.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Never run down the street and do not let others do it.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•If you are close enough to the basement, go there.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "How do the shots sound?",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "The sounds of real shell hits are heavy, with a characteristic crackle when hitting houses, and more muffled if the shell hits the ground. "
                "The 82 mm mines, the smallest used, make a characteristic whistle as they fly, the 120 mm hiss, and the tank rockets make an "
                "incomparable howl.  Rockets are not audible in flight at all. The outgoing volley of rocket artillery resembles the sound of peas "
                "spilling out on the table.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "What to do at the first sound of shells?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Drop down where you are standing and wait out the shelling there. Change location only as a last resort. Listen and at the same time "
                  "look for a place to take cover. You need to catch the rhythm: the sound of the volley, the flight time of the shell and the fall. "
                  "Count the seconds from the volley to the fall and start running immediately after the hit. You need to fall a couple of seconds "
                  "before the estimated time of the next hit. If two or more units are running, count from the last one.\n"
                  "Open your mouth and cover your ears with your hands. This will help you avoid concussion and keep your ears open for particularly close "
                  "bursts. If you happen to stop hearing after shell explosion, don't be frightened. Usually, if there is no physical damage, hearing will "
                  "recover within 3-7 days. Close your eyes to keep them free of dust and stone chips.",
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
                  "Where can I hide?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "The lower you are in relation to the surface of the ground, the better. Underpasses, basements, sewer manholes (as long as there is no "
                  "steam escaping), ditches, trenches, and even just a high curb. Any terrain that can protect you from shrapnel is suitable. During "
                  "the explosion, fragments fly upwards and sideways tangentially, so the lower relative to ground level you lie down, the better your "
                  "chances of staying unharmed.",
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
                  "Never hide near the walls of buildings. If wall aws hit by shell, you may be hit by brick fragments, concrete, or even be knocked over.",
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
                  "The same goes for windows and shop windows: one small window becomes a bucket of small shards after an explosion, some of which fly "
                  "out into the street and can seriously injure you. \n"
                  "Avoid the various piles of crates, containers, and other items that could get you killed even by a shock wave. You don't want to get "
                  "under cars, either: they won't save you or protect you from shrapnel.",
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
                  "Where is it safer indoors?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "The safest place during shelling (aka your sleeping place) should be an inner room, preferably with load-bearing walls, no windows, or "
                  "with windows facing the wall of another house. Take care of a rug or mat on the floor.",
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
                  "If possible, cover the top with a thick blanket - this is additional protection both from flying splinters and from crumbs and glass."
                  "Don't waste time going down to the basement if you live on higher floors. Better to lie down in the doorway or on the landing. A shell "
                  "is equally likely to hit either the ninth or third floor as you run up the stairs. Don't risk because of useless movements.",
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
                  "What to do if shelling catches you on the road?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "If you drive a car along the line of contact, leave the windows open. This will allow you to control the situation and, if necessary, "
                  "stop quickly and get out of the car. Even if it is freezing outside, keep your windows open until you leave the firing zone.",
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
                  "How do you deal with emotions?",
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
                  "Try to calm down. Atheists can count to a hundred, believers can pray. Both can try to breathe calmly and deeply.\n"
                  "No matter what is going on around you, the main goal is not to panic. You don't have to run, especially if there are people around. "
                  "Someone may follow your silly example. Very often women in such situations get lost, they may freeze or run away. Put them on the "
                  "ground (don't care about the dirt, puddles, and trash underfoot) and don't let them move.\n"
                  "If you come under fire with a girl or child, hold their hand tightly and don't let them straighten up and run. Don't be afraid to "
                  "slap them to bring them to their senses.\n"
                  "If you can't stand it at all, you can scream. Everyone is scared under fire, there are no exceptions.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ]),
        ));
  }
}
