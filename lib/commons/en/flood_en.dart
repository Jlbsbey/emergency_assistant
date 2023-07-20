import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FloodENPage extends StatefulWidget {
  @override
  State<FloodENPage> createState() => _FloodENPageState();
}

class _FloodENPageState extends State<FloodENPage> {
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
          'Flood',
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
                  title: Text('•If there is a risk of flooding:'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•Contact your local authorities to find out if you are at risk.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•If so, prepare to evacuate: move everything from the basement and first floor upstairs, take care of the seniors, secure '
                      'property in the yard.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text(
                      '•In case of an evacuation, turn off the heating, electricity and gas, close everything you can.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: ListTile(
                  title: Text('•Inform your family about the evacuation.'),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•If the flood happened unexpectedly and there is no possibility to evacuate:'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child:
                      Text('•If your health or life is in danger, call 112.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text('•Move to the roof or higher floors.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                      '•If a flood occurs at night, use flashlight light to signal rescuers of your location.'),
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
                    "If there is a risk of flooding and you can evacuate:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 8.0),
                child: Text(
                  "•Contact your local authorities to find out if you are in a flood-prone area.\n"
                  "•Listen to weather warnings, monitor the situation near your home, and inform your neighbors.\n"
                  "•Know and keep in your cell phone and notebook the phone numbers you should call to report flooding and get help - local government and emergency numbers.\n"
                  "•If you are in an area at risk of flooding, take care of the elderly, children, disabled and sick by finding a safer place to stay with family or friends. Seek help from local authorities if necessary.\n"
                  "•Know where to evacuate livestock and pets and how to feed them if necessary. If this is not possible, seek help from local authorities in a timely manner.\n"
                  "•To reduce flood damage, move things from basements and first floors to upper floors or attics, and secure things in the yard and around the house. Prepare the things you will take with you when evacuating, as the house could flood in no time.\n"
                  "•Prepare vehicles (cars, tractors, etc.) and watercraft (boats, rafts, etc.) to be used for evacuation.\n"
                  "•When leaving your home and outbuildings, turn off the power and gas supply, domestic heaters and equipment, and close windows, doors, hatches and shutters.\n"
                  "•In the case of an evacuation, notify your relatives.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "If a flood occurs unexpectedly and there is no possibility to evacuate:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 8, top: 8),
                child: Text(
                  '•If your health or life is in danger, call emergency services at 112\n'
                  '•Move to the top floors or roof of the building. If a flood has started at night, use a light signal to let rescuers know your location.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: h),
                child: Text(
                  'Remember, if you are asked to evacuate and you refuse to do so, you must acknowledge your refusal in writing, thereby accepting responsibility for any consequences. If an emergency is declared, a forced evacuation may be imposed.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
}
