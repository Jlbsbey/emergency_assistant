import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandslideENPage extends StatelessWidget {
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
            'Landslide',
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
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text('•If you are at home:'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text(
                        '•Bring all things from the yard or balcony into the house.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text(
                        '•Remove all poisonous and flammable substances from your home.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text('•Shut off the electricity, gas and water.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: ListTile(
                    title: Text('•Close doors, windows and vents tightly.'),
                    visualDensity: VisualDensity(vertical: -4),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('•If you are not at home:'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Do not move to the opposite side of the landslide, but to the side.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                        '•Let your neighbors know that disaster is coming.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child:
                        Text('•Get out of the line of landslide immediately.'),
                  ),
                  visualDensity: VisualDensity(vertical: -4),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 1,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "If you are at home:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 8.0),
              child: Text(
                "•Bring all belongings into the house from the yard or balcony. If possible, wrap things that can be damaged by moisture in plastic wrap.\n"
                '•Remove poisonous and flammable substances from the house. They can be buried in the garden or placed in the cellar. The entrance to the '
                'cellar should also be carefully covered.\n'
                '•Cut off electricity, gas, and water. Unplug electrical appliances from outlets. Disconnect the gas cylinder if you use it.\n'
                '•Close doors, windows, and vents tightly. This is necessary to keep dirt and water streams from entering the house.\n'
                'Then go to the organized evacuation point or leave the settlement by your car. If you leave on your own, find out a safe route and '
                'where to find an evacuation point. \n'
                'If you are overtaken by a landslide and your home is moving with the soil on which it is standing, you need to leave the premises. Try '
                'to stay close to the center and as high as possible. Stay away from the edges of the moving area.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "If you are away from home:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 8, top: 8),
              child: Text(
                'You may hear or hear rumbling rocks when you are outside your settlement. You may find yourself in the mountains, alone or with a group. '
                'In these cases, you should immediately move away from the approaching landslide.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 8, top: 8),
              child: Text(
                '•In a town or city, do not move to the opposite side of a landslide, but to the side. Safe places are mountain slopes or other high ground '
                'where there is no danger of mudslides or landslides. Try to get to such areas as quickly as possible.\n'
                '•Inform your neighbors of the impending disaster. If the noise of a raging disaster catches you on the streets of a town or city, tell '
                'everyone you meet along the way about the danger. Perhaps someone will hear about the landslide or avalanche from you.\n'
                "•In the mountains, get out of the landslide's line of movement right away. Use the same tactic - move sideways and upward. If you are in "
                "the lowlands, immediately climb to a height of more than 50-100 meters. Remember that during a landslide, heavy rocks can fly out of "
                "it. The high speed makes them life-threatening, so try not to hesitate.\nDo not hide in valleys and gorges.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "What to do when the landslide is over:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 8, top: 8, bottom: 8),
              child: Text(
                'If you had an emergency escape from the elements and made it to the nearest safe place, make sure there is no longer a threat. After that, '
                'return to your settlement. With a working communication, let your relatives know that you are all right.\n'
                'Then, if you are feeling well, help the rescuers. You can join in the search for victims and debris removal. If you are hurt yourself, '
                'ask for help.\n'
                'Do not enter the house until it has been examined by specialists. They need to make sure the supporting structures are okay. It is '
                'important to check that there are no gas leaks in the home. Do not turn on the electricity until you have received confirmation that '
                'the grid is working properly.\n'
                'Continue to watch for information from emergency services. This way, you will not be caught unawares by a new cataclysm.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
