import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstHelpENPage extends StatefulWidget {
  @override
  State<FirstHelpENPage> createState() => _FirstHelpENPageState();
}

class _FirstHelpENPageState extends State<FirstHelpENPage> {
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
            'First help',
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
                  "What to do if a person has fainted?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0),
              child: Text(
                "•Check victim's consciousness - speak loudly and gently shake victim's shoulder: if victim is unresponsive, he may be unconscious.\n"
                "•Call for help, lay the victim on his back and release the airway by tilting the head and lifting the chin (see Fig. 1). \n"
                "•Without releasing the head, check and assess breathing with vision, hearing, and sensation for 10 seconds. Ask someone to "
                "call an ambulance(112). \n"
                "•If the victim is breathing normally (you hear at least 2 breaths/exhalations in 10 seconds) - place the victim in a stable "
                "side position (see 2 fig.). \n"
                "•If the victim is not breathing or is breathing slowly, noisily, or with barely detectable breathing, remove all clothing from "
                "the victim's chest, place your hands on the center of the chest and begin cardiac massage (see 3 fig.) by doing 30 heart "
                "massages (rate 100-120 times per minute; depth 5-6 cm). \n"
                "•Clear the airway by tilting the head and lifting the chin, and take 2 mouth-to-mouth breaths (see Figure 4). The respiratory "
                "volume is the volume with a relaxed exhalation. Observe the casualty's passive exhalations. \n"
                "•A respiratory mask with a one-way valve is recommended. If you do not have such a mask and cannot ventilate, you can only do "
                "cardiac massage. This may be less effective, but it is better than doing nothing. \n"
                "•Continue with a 30:2 ratio of massage and breathing (30 cardiac massages: 2 breaths) until an ambulance arrives and takes over "
                "resuscitation, until the victim moves, opens his eyes and breathes normally, or until your strength is exhausted.\n",
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
                  "What to do if there is heavy bleeding?",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Wear disposable rubber gloves or other waterproof material (such as a plastic bag).\n"
                "•Remove clothing from the bleeding area.\n"
                "•Cover the wound with your finger, hand, or fist, using a gauze compress or a clean piece of clothing if possible (see 5 fig.).\n"
                "•Place the victim in a supine position so that the bleeding area is on top. Make sure the bleeding has stopped.\n"
                "•If bleeding continues, apply more pressure to the wound, placing another gauze compress or a piece of cloth over the existing material if possible.\n"
                "•Call an ambulance(112) and keep the wound closed until they arrive.\n"
                "•Keep the injured person from cooling down and protect them from exposure to the environment. \n"
                "•Care for and reassure the injured person. ",
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
          ]),
        ));
  }
}
