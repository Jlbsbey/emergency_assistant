import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GasLeakENPage extends StatefulWidget {
  @override
  State<GasLeakENPage> createState() => _GasLeakENPageState();
}

class _GasLeakENPageState extends State<GasLeakENPage> {
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
          'Gas leak',
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
              'Overview',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Call 112 for help'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Do not let fire break out'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Ventilate rooms'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Leave the rooms'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•Call for medical help'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Stop the leak by cutting off the gas supply'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•Stay calm'),
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
              'Full guide',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            initiallyExpanded: true,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Text(
                    "What could indicate a gas leak:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
                child: Text(
                  "The most obvious sign of a leak is the smell of gas. Since natural gas is odorless, tasteless and colorless, "
                  "a specific odorous enzyme (mercaptan) is added to it for early detection of a leak, giving it a sulfurous smell (rotten eggs).\n"
                  "A sign of a gas leak can also be a bad feeling. At low concentrations, natural gas can cause dizziness, headaches, nausea, and loss "
                  "of coordination. If any of these symptoms occur and a natural gas leak is suspected, you should leave the room immediately. At "
                  "high concentrations in confined spaces, if the specific odor of the gas is not detected in time, the amount of breathable oxygen "
                  "is reduced and the natural gas may be asphyxiating."
                  "Symptoms: impaired movement, loss of consciousness, vomiting. The victim may not feel the warning symptoms of possible asphyxiation "
                  "and falls into a deep sleep (unconsciousness), which can lead to death.\n"
                  "In the case of a gas leak, pets also experience changes in their well-being. Pet owners should watch for the following signs: difficulty "
                  "breathing, behavioral changes, disorientation, loss of appetite, red or watery eyes, and vomiting.\n"
                  "Small gas leaks may be odorless. In addition to a change in well-being, if there is a leak in the house, you may notice several changes "
                  "that need attention:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text(
                    "•A whistling or hissing sound near the gas pipe. Sometimes there is a low, hissing sound when gas leaks. This means that the gas "
                    "is escaping fairly quickly, and any noise coming from the gas system is usually not a good sign.\n"
                    "•A white cloud or dust cloud near the gas pipe. Sometimes a fine mist may form when gas leaks outside. This is caused by a gas leak "
                    "from an underground pipeline. Condensation collects and forms a low, unnatural haze around the house.\n"
                    "•A damaged gas pipe.\n"
                    "•Dead houseplants. Gas leaks are bad for all living things. Plants both produce and consume oxygen, so if there is not enough oxygen "
                    "in the room, they will begin to slowly die. If the plants in the house suddenly die at the same time (assuming they are watered "
                    "as needed), it could be a sign of a gas leak.\n"
                    "•Natural gas consumption has skyrocketed. Pay attention to the cause, as gas from gas pipes and appliances may be leaking into or onto the house.",
                    style: TextStyle(fontSize: 16),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "What to do when a gas leak is detected:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 8.0, bottom: 8),
                child: Text(
                  "If there is a gas leak, it is important to act quickly but cautiously:",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 32, bottom: h),
                  child: Text(
                    '•Call for help. In case of a natural gas leak or a specific odor, call 112 immediately.\n'
                    '•Do not allow a fire to break out. Potential ignition sources should be avoided by avoiding sparks and open flames. Light fixtures '
                    'and other electrical equipment should not be turned on or off, as this can cause sparks and further ignition.\n'
                    "•Ventilate the rooms. Ensure adequate ventilation of enclosed spaces. Open windows and doors before leaving the room.\n"
                    "•Leave the room. Take care of your health and safety, and then take care of your family members. Warn other residents of the building "
                    "of a gas leak or possible gas leak, help them get out of the building, and wait for the emergency gas service at a safe distance "
                    "from the leak.\n"
                    "•Both humans and animals need medical aid in the case of a gas leak. In case of severe symptoms, call emergency medical assistance at 112.\n"
                    "•If possible and if it does not endanger your health, stop the leak by shutting off the natural gas supply by closing the valves.\n"
                    "•It is important to remain calm and put your own safety and health first, and only then think about how to prevent or reduce the "
                    "consequences of a gas leak.",
                    style: TextStyle(fontSize: 16),
                  ))
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
                label: Text("On top"),
              ),
            ),
    );
  }
}
