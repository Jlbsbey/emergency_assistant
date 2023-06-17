import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EarthquakeENPage extends StatefulWidget {
  @override
  State<EarthquakeENPage> createState() => _EarthquakeENPageState();
}

class _EarthquakeENPageState extends State<EarthquakeENPage> {
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
            'Eathquake',
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
                    child: Text('•If you are indoors, stay there.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•If you are cooking, turn off the stove and hide.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•If you are outside, move to an open area where falling objects are unlikely to hit you. Move away from buildings, power lines, and trees.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•Never try to get out of a building during an earthquake.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•If you are in a place with many people, avoid panic and do not rush to the exit. Kneel down and cover your head and neck with your hands and palms.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        '•If you are in a car, slowly slow down and pull over to the side of the street.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "If you are in a 2 or 3-story building:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "As soon as you feel the first tremor, try to leave the building. From the time you feel the first tremors until they become dangerous to the building, you will have about 15-20 seconds.\n"
                "Take your bag and a emergency kit. Do not use the elevator, but take the stairs, as the elevator may get stuck with you during an earthquake.\n"
                "When leaving a room, stay as far away as possible from buildings, pillars, balconies, and other dangerous objects that could fall on you "
                "during an earthquake.\n"
                "Avoid torn wires. Try to stay outdoors at all times, stay calm, and wait for the earthquake to end.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "In the high-rise:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Do not panic. If you are above the third floor, you may not have time to get out of the building before the earthquake becomes dangerous "
                "to the structure. In this situation, you are less likely to be injured if you stay where you are and find as safe a place as possible.\n"
                "Sit on the floor under a sturdy table, chair or bed, preferably near an interior wall. Adopt a fetal position. If possible, cover your head "
                "and neck with something suitable, such as a pillow, to protect yourself from falling pieces and broken glass. If nothing suitable is "
                "available, cover your head with your hands.\n"
                "Stay away from cabinets, shelves, and other furniture that could fall on you. Also avoid exterior walls, as they will collapse first.\n"
                "Despite the myth that the back of a sturdy upholstered chair or sofa can save you if the top floor collapses, this theory is wrong. Mainly "
                "because it is too difficult to predict where the ceiling collapse will occur. Also, a couch can only protect if the ceiling collapses "
                "in whole sections, not in parts. For this reason, it is better to hide under a sturdy table or bed and use the couch only when there "
                "are no other options.\n"
                "There is also the belief that you should stand in the doorway during an earthquake. This may be true for old brick or stone walls with a "
                "wooden partition. However, in modern prefabricated and frame houses, doorways may not be much stronger than any other part of the "
                "building. Moreover, the main cause of death in an earthquake is not the collapse of the upper floor, but injuries due to falling "
                "relatively small debris, and in such cases a doorway would not be a reliable shelter.\n"
                "If you are in the kitchen, turn off the stove at the first sign of an earthquake. This is to reduce the risk of fire. However, if you have "
                "to walk relatively far to the stove, it is best to waste no time and hide.\n"
                "If you are lying in bed and cannot hide under it, cover yourself with blankets and pillows. If you are in a wheelchair, remember to lock the wheels.\n"
                "Wait in your shelter until the earthquake is over.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "Outdoors:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "It is safest to be outdoors during an earthquake, so don't try to go indoors. Stay as far away as possible from buildings, fuel and gas "
                "pipes, sewer manholes, and power lines that could fall on you. Also, do not stand under balconies, arches, or other parts of "
                "buildings, as they may collapse even if the building itself remains unharmed.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "In the car:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "Stop on the side of the road as far away as possible from poles, power lines, bridges, and other objects on which you could fall. Also, "
                "do not stop over underpasses, as they may collapse during an earthquake.\n"
                "Put your car on the handbrake and wait for the earthquake to stop. Don't get out of your car, as it can serve as protection from falling debris and objects.\n"
                "Remember to turn on the radio, as it may transmit important information. If an electrical wire falls on your car, call 112 and stay in "
                "your car while rescuers remove the wire.\n"
                "When the earthquake is over and you can continue on your way, watch carefully for obstacles in the road. These may include fallen poles, "
                "broken power lines, cracks in the road surface, flooded areas due to levees, and collapsed bridges and overpasses.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "In a public place:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "If you are in a stadium, theater, or similar place, don't run straight to the exit, because everyone else will have the same thought in "
                "their head and the crowd might just crush you. Stay in your seat, sit between seats and cover your head and neck with your hands, "
                "jacket or bag. When the earthquake is over, leave, being careful not to be crushed or have anything fall on your head.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Row(
                children: [
                  Text(
                    "On the seashore:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "In theory, an open seashore, away from buildings and power lines, should be safe during an earthquake. However, if an earthquake lasts "
                "20 minutes or more, you should hurry and move to higher ground. This is because an earthquake can cause a tsunami. Go inland, at "
                "least 3 kilometers away, or to a place that is at least 30 meters above sea level. Move quickly and on foot to avoid traffic jams, "
                "car accidents, and other dangerous situations.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "What to do if you are buried under rubble:",
                style: TextStyle(color: Colors.red, fontSize: 25),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 16),
              child: Text(
                "If you find yourself under rubble, try not to panic and move as little as possible to avoid raising dust. Do not make any sudden movements, "
                "even if your arm or leg is trapped, and do not try to free yourself, as this may contribute to the further collapse of the building. "
                "Cover your nose and mouth with a handkerchief or clothing to avoid breathing the dust. If you have a telephone, use it to call 112.\n"
                "If you use your phone for lighting, turn it off periodically to save battery power. Do not light a fire, as sparks can cause an explosion "
                "if there is a gas leak or fuel spill nearby. Also, combustion consumes oxygen, which can be dangerous in a confined space. If possible, "
                "secure the ceiling above you with improvised items, such as boards or scraps of furniture.\n"
                "If you are under rubble for a long time, remember that you can drink water from a water tank and that radiator pipes can be used to "
                "indicate your location. Take care of your strength and don't panic, remember that a person can go without food for more than 2 weeks.\n"
                "When rescuers arrive, tap the radiator tubes or wall to get the rescuers' attention and to announce your whereabouts. Don't hit too hard, "
                "however, as it may cause something to fall on you. You can rattle a bunch of keys or use a telephone or whistle to signal your "
                "whereabouts by sound. Yell only if absolutely necessary, so as not to waste energy and oxygen.\n"
                "When rescuers hear you and start looking for you, give your name, tell them about your injuries, tell them where you were in the building "
                "at the time of the earthquake and what you see around you.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
