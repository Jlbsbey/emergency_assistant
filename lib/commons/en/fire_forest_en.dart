import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FireForestENPage extends StatefulWidget {
  @override
  State<FireForestENPage> createState() => _FireForestENPageState();
}

class _FireForestENPageState extends State<FireForestENPage> {
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
          'Fire in forest',
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
                  title: Text(
                      '•If the fire is small enough, try to extinguish it immediately.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      '•If the fire cannot be extinguished, run away from the fire.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      '•Move perpendicular to the direction the fire is spreading.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      "•If you can't run away from the fire, soak in water or cover yourself with wet clothes."),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                      '•If you are in a wooded meadow, get close to the ground.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('•When leaving the scene, call 112.'),
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
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Text(
                    "First, there are three types of wildfires:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Ground fire:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8.0),
                child: Text(
                  "Ground fires move slowly, a few meters a day. They are especially dangerous because of the sudden bursts of fire from the underground "
                  "hearth and the fact that its edge is not always visible and you can fall into the burning peat. Therefore you should avoid peat "
                  "fields in the case of fire, and if necessary, only move around in a group, and the first person in the group should check the ground "
                  "with a pole, as if he were walking on thin ice. A sign of an underground fire is that the ground is hot and smoke is coming out of "
                  "the ground.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Surface fire:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
                child: Text(
                  'Surface fires (90% of all fires) burn the lower parts of trees, grass, deadwood, and roots. The speed of fire spreading is from 1 to 3 '
                  'meters per minute and the height of the flames is from half a meter to one and a half meters. At a spreading speed of 3 to 4 meters '
                  'per minute, the fire becomes large in 10 to 14 hours.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Crown fire:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
                child: Text(
                  'A crown fire is possible when the wind is strong: the fire moves through the tree crowns at a speed of 5 to 100 meters per minute or more. '
                  'The wind picks up burning branches and sparks that ignite the forest dozens of meters ahead and create new hotspots.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Second, what if there was a fire in the forest?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "Order of action:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 24.0, right: 8, top: 8, bottom: h),
                child: Text(
                  '•If the fire is small, you should try to extinguish it immediately by hitting the flames with branches or a blanket. Strikes should be '
                  'struck obliquely toward the burned area.\n'
                  '•If the fire is too big to extinguish, immediately warn others around you and hurry to leave the scene of the fire. Move perpendicular to '
                  'the direction the fire is spreading toward a road, forest belt, field, or lake shore.\n'
                  '•If there is no way to leave the scene of the fire and there is water nearby, immerse yourself in it or cover yourself with wet clothing. '
                  'If you are in a forest clearing, get as close to the ground as possible where the air is less smoky.\n'
                  '•Once you are in a safe place, call 112 to report a wildfire.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
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
} /*




*/
