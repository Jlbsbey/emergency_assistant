import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmergencyItemsENPage extends StatefulWidget {
  @override
  State<EmergencyItemsENPage> createState() => _EmergencyItemsENPageState();
}

class _EmergencyItemsENPageState extends State<EmergencyItemsENPage> {
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
          'Evacuation and \nemergency kit',
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
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "What should I do if I need to evacuate?",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 8.0), //•
            child: Text(
              "•Listen carefully to the evacuation announcement, remember and follow the direction of the evacuation, destination or pickup point.\n"
              "•If possible, use your own vehicle and drive in the designated evacuation direction to your destination or to a pre-selected shelter"
              " location that matches the evacuation direction.\n"
              "•If it is not possible to use your own vehicle, go to the nearest designated evacuation pickup point.\n"
              "•If you evacuate, notify your family and friends.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "What should I take with me when I evacuate?",
                style: TextStyle(color: Colors.red, fontSize: 25),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 8.0),
            child: Text(
              "If you need to evacuate quickly and temporarily, take your identification documents (passport, ID card), money, bank cards, cell "
              "phone, charger, portable radio with batteries and medicines if you need to take them regularly. In case of a prolonged evacuation, "
              "take an emergency kit with you.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "What is an emergency kit and what should I put in it?",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 8.0),
            child: Text(
              "An emergency suitcase contains items that a person or family will need in the case of a prolonged and foreseeable evacuation, as "
              "well as in the case of a utility (gas, electricity, water) outage. Use this list and prepare your bag in advance. In your "
              "kit bag, put:",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 0),
            child: Text(
              "•Copies of important documents (passport or ID card, driver's license, vehicle registration certificate, etc.) in a plastic bag. "
              "Keep originals of your identification documents with you.\n"
              "•A small amount of money. Keep all other cash and bank cards with you.\n"
              "•Portable radio, matches or lighters, flashlight, batteries.\n"
              "•Universal folding knife, spoon, unbreakable bowl and mug.\n"
              "•Tape, string, thread, needle, scissors, paper and stationery.\n"
              "•First aid kit.\n"
              "•Clothing, spare underwear and comfortable shoes.\n"
              "•Sleeping bag or blanket, camping mat, preferably a tent.\n"
              "•Hygiene items, towel, toilet paper, disposable wipes.\n"
              "•Foodstuffs that can be eaten uncooked and with a long shelf life - dry soups, canned food, cookies, sweets with high calorie count.\n"
              "•Drinking water for several days (preferably in plastic bottles).\n",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 8, bottom: h),
            child: Text(
              "Remember: if possible, turn off the gas and electricity supply to the house before evacuating.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
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
/*

;

līmlenti, auklu, diegu, adatu, škēres, papīru un rakstāmpiederumus;
pirmās palīdzības aptieciņu;
apģērbu, rezerves apakšveļu un ērtus apavus;
guļammaisu vai segu, tūristu paklājiņu, vēlams telti;
higiënas piederumus, dvieli, tualetes papīru, vienreiz lietojamās salvetes;
pārtiku, ko var lietot bez termiskas apstrādes un ar ilgu derīguma termiņu -
sausās zupas, konservus, sausiņus, saldumus ar augstu kaloriju saturu;
dzeramo ūdeni vairākām dienām (ieteicams plastmasas pudelēs).
*/
