import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FireBuildingENPage extends StatefulWidget {
  @override
  State<FireBuildingENPage> createState() => _FireBuildingENPageState();
}

class _FireBuildingENPageState extends State<FireBuildingENPage> {
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
          'Fire in a building',
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
              'Overview:',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text('•If you can get out of a room:'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text('•Run outside without thinking about anything'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•Always use the stairs only. Never use the elevator.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text('•Hold on to the handrail of the stairs.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•Once you are safe, call the fire and rescue service.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text("•If you can't get out of the room:"),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text('•If you feel the door is hot, do not open it.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text('•If the door is hot, plug the cracks.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•If there is a phone and there is no smoke in the room you are in, call the Fire and Rescue Service at 112.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•Crawl up to the window and open it slightly (never open it all the way!).'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text('•Keep low at the window.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•If possible, cover your nose and mouth with some wet cloth.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•If you are on the first floor and can get out through a window safely, do it.'),
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
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0, top: 0),
                child: Text(
                  "Don't panic, because an objective evaluation of the situation and the right course of action will increase your chances of being rescued. "
                  "If you wake up and find that a fire has started, roll onto the side of the bed and crawl toward the door. By staying close to the "
                  "floor, you may be able to escape. Crawl to the door to the room. Try to feel for the door with your hand. Do not try to grab clothes "
                  "or valuable items.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "If you can get out of the room:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 8.0),
                child: Text(
                  "If the door doesn't feel hot when you touch it, open it slightly and check for smoke and fire outside. Close the door when you leave the "
                  "room, this will reduce the spread of fire and protect your property. Remember to take your keys. If all escape routes are closed "
                  "and you cannot leave the building, you will need a key to return to your apartment, which will be your safest shelter.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 8, top: 8),
                child: Text(
                  '•Do not try to find the place that burns. The precious time you lose could be crucial to your salvation.\n'
                  "•Don't linger in stairwells and hallways, wondering what to do. Leave the house as soon as possible. You should know which hallways in the house lead to dead ends; try to avoid them.\n"
                  '•Expect panic around you. Hold on to the stair railings, this will help you hold on if there is a commotion in the stairwell.\n'
                  "•Don't try to meet everyone inside before you leave the building, as every minute is valuable.\n"
                  "•Once you are safe, call the Fire and Rescue Service(112). Don't take it for granted that one of your neighbors has already done this. Do not hang up until the dispatchers have all the information they need.\n"
                  '•Do not return to the house until the fire department has given permission.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "If you can't get out of the room:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 8, top: 8),
                child: Text(
                  '•If you feel the door is hot when you feel it, do not open it. It may mean that there is a fire behind the door. If you open the door, '
                  'flames will immediately enter the room. A closed door can shield you from the fire and protect you until emergency services arrive.\n'
                  '•If the door is hot, plug the gaps. Damp towels, blankets are best for this. Sheets and clothing are also helpful.\n'
                  '•If you have a phone and there is no smoke in the room you are in, call 112.\n'
                  '•Crawl over to the window and open it slightly. If you open the window all the way, you will create a draft that will encourage smoke to '
                  'enter the room.\n'
                  '•Stay lower by the window, this will allow you to breathe fresh air outside and avoid slowly filling the room with smoke.\n'
                  '•If possible, cover your nose and mouth with some wet material, this will filter the smoke and make breathing easier.\n'
                  '•Only in case of emergency, open the window completely or break the glass. In this case, smoke can enter the room and the outside of '
                  'the house. In addition, the glass will be broken and you will no longer be able to close the window.\n'
                  '•If you are on the first floor and can get out safely, do so.\n'
                  '•If you are above the first floor, it is best to avoid jumping. Many people who could have survived the fire by waiting for help in '
                  'their room have died by jumping from dangerous heights.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "How to attract attention if you can't leave the room:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 24.0, right: 8, top: 8, bottom: h),
                child: Text(
                  '•Make a noise to let others know where you are. The best way to do this is to knock with an object rather than shout.\n'
                  '•Waving a towel or sheet through the window will draw attention to your location.',
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
