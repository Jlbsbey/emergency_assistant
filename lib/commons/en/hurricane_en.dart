import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HurricaneENPage extends StatefulWidget {
  @override
  State<HurricaneENPage> createState() => _HurricaneENPageState();
}

class _HurricaneENPageState extends State<HurricaneENPage> {
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
            'Hurricane',
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
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
              child: Text(
                "What to do during a Hurricane?",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Text(
                "First, evacuate if you are directed to do so or if you feel it might be unsafe to remain in your home. If you remain in your home, follow "
                "these tips to help you and your family stay safe during the storm:",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Use a portable radio to listen to important storm updates, information and instructions.\n"
                "•Stay inside and keep away from all windows, skylights and glass doors. Go to a safe area, such as an interior room, closet or downstairs "
                "bathroom.\n"
                "•Never go outside the protection of your home or shelter before there is confirmation that the storm has passed the area. The eye of the "
                "storm could create a temporary and deceptive lull, with high winds still approaching.\n"
                "•If power is lost, keep the refrigerator closed to keep cold air trapped and delay spoilage of perishable food.\n"
                "•If you use a portable generator, follow all the manufacturer’s instructions. Generators should be properly grounded to prevent electrical "
                "shock and should never be operated indoors, in garages, basements or outdoors near any windows, doors or vents. Because generators produce "
                "carbon monoxide (CO), make sure you have a working CO detector in your home.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
