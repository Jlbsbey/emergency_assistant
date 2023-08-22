import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LostDocPage extends StatefulWidget {
  @override
  State<LostDocPage> createState() => _LostDocPageState();
}

class _LostDocPageState extends State<LostDocPage> {
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
          'Pazaudēti dokumenti \nārzemēs',
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
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
            child: Text(
              "Ko darīt, ja, atrodoties ārzemēs, rodas problēmas ar pasi vai personas apliecību (eID)?",
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 8.0, bottom: h),
            child: Text(
              "Ja esat pazaudējis vai Jums ir nozagta personas apliecība un tajā ir iekļauti sertifikāti, kas pēc Jūsu vēlmes tika aktivizēti, Jums nekavējoties jāsazinās ar uzticama sertifikācijas pakalpojumu sniedzēja VAS „Latvijas Valsts radio un televīzijas centrs” (LVRTC) palīdzības dienestu pa tālruni 67108787 un jālūdz sertifikātu darbības apturēšana. Palīdzības dienesta operators, lai pārliecinātos par Jūsu identitāti, uzdos slepeno jautājumu, kuru būsiet norādījis(-usi) noformējot iesniegumu personas apliecības izsniegšanai.\n"
              "Līdzīgi ir jārīkojas, ja Jums ir pamatotas aizdomas, ka Jūsu personas apliecība ir nonākusi citas personas rīcībā un elektroniskā paraksta radīšanas dati ir izmantoti bez Jūsu ziņas.\n"
              "Apturētu sertifikātu darbības atjaunošanu Jūs varat pieprasīt tikai klātienē PMLP nodaļā vai Latvijas diplomātiskajā pārstāvniecībā ārvalstīs.\n"
              "Ja pase vai personas apliecība ir pazudusi, nolaupīta vai sabojāta un personas rīcībā nav derīga dokumenta, lai atgrieztos atpakaļ Latvijā, pārstāvniecībā ārvalstīs tiek izsniegta atgriešanās apliecība.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
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
                label: Text("Uz augšu"),
              ),
            ),
    );
  }
}
