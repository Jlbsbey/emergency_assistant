import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TsunamiENPage extends StatefulWidget {
  @override
  State<TsunamiENPage> createState() => _TsunamiENPageState();
}

class _TsunamiENPageState extends State<TsunamiENPage> {
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
            'Tsunami',
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
                  "During a tsunami:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 8.0, bottom: 8),
              child: Text(
                "•Do not go near the shore to watch a tsunami hit. If you can see it, you are too close to escape.\n"
                "•Should a tsunami occur and you cannot get to higher ground, stay inside where you are protected from the water. It's best to be on the "
                "landward side of the house, away from windows.\n"
                "•Often tsunamis occur in multiple waves that can occur minutes apart, but also as much as one hour apart.\n"
                "•Monitor the tsunami's progress and listen for warnings or instructions from local officials. If you are safe when the first tsunami hits, "
                "stay put until authorities declare all is safe.\n"
                "•After a tsunami hits, you may encounter flood waters. Flood waters can be dangerous to walk or drive through. Before driving anywhere, it "
                "is best to listen carefully to rescue officials who will be coordinating evacuation plans.\n"
                "•Be aware of risks such as hypothermia from cold water or drowning from running water.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ));
  }
}
