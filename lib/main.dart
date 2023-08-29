import 'dart:ui';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '/commons/main_ru.dart';
import 'commons/animal_bite.dart';
import 'commons/artillery.dart';
import 'commons/chemical_threat.dart';
import 'commons/earthquake.dart';
import 'commons/fire.dart';
import 'commons/flood.dart';
import 'commons/gas_leak.dart';
import 'commons/general_guidelines.dart';
import 'commons/hurricane.dart';
import 'commons/landslide.dart';
import 'commons/language.dart';
import 'commons/lost.dart';
import 'commons/lost_doc.dart';
import 'commons/main_en.dart';
import 'commons/nuclear_threat.dart';
import 'commons/occupation.dart';
import 'commons/sources.dart';
import 'commons/tsunami.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent, // Make the status bar transparent
    statusBarIconBrightness:
        Brightness.light, // Use light icons on the status bar
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Locale deviceLocale = window.locale;
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Assistant',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        home: getHomePage(deviceLocale),
        debugShowCheckedModeBanner: false,
      ),
    );
  }

  Widget getHomePage(Locale deviceLocale) {
    if (deviceLocale.languageCode == "ru") {
      return MyHomeRUPage();
    } else if (deviceLocale.languageCode == "lv") {
      return MyHomePage();
    } else {
      return MyHomeENPage();
    }
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var appState = context.watch<MyAppState>();
    //var pair = appState.current;
    double height = MediaQuery.of(context).size.width * 0.50;
    language = "lv";
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
          'Ārkārtu situāciju asistents',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        actions: <Widget>[],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/earth.jpg'), fit: BoxFit.cover)),
        ),
      ),
      drawer: Drawer(
        // column holds all the widgets in the drawer
        child: Column(
          children: <Widget>[
            Expanded(
              // ListView contains a group of widgets that scroll inside the drawer
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  SizedBox(
                    height: kToolbarHeight * 2.1,
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Text(
                        'Menu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.luggage),
                    title: Text('Pazaudēti dokumentus ārzemēs'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LostDocPage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.source),
                    title: Text('Informācija par aplikāciju'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SourcePage()));
                    },
                  ),
                ],
              ),
            ),
            // This container holds the align
            Align(
                alignment: FractionalOffset.bottomCenter,
                // This container holds all the children that will be aligned
                // on the bottom and should not scroll with the above ListView
                child: Column(
                  children: <Widget>[
                    Divider(),
                    SizedBox(
                      width: 170,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomeRUPage()));
                        },
                        icon: SizedBox(
                          height: 40,
                          child: Image.asset('lib/icons/russia.png'),
                        ),
                        label: Text(
                          "Русский",
                          style: TextStyle(fontSize: 16),
                        ),
                        //child: child
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomeENPage()));
                        },
                        icon: SizedBox(
                          height: 40,
                          child: Image.asset('lib/icons/united-kingdom.png'),
                        ),
                        label: Text(
                          "English",
                          style: TextStyle(fontSize: 16),
                        ),
                        //child: child
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //_________________________________________________________________________________1
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 4.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/general_guideline.jpeg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Vispārīgie padomi",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GeneralPage()));
                      },
                    ),
                  ),
                ),
                //_________________________________________________________________________________2
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 4.0, right: 8.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/gas_leak.jpeg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Gāzes noplūde",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GasLeakPage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            //_________________________________________________________________________________3
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 4.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/fire.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Ugunsgrēks",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirePage()));
                      },
                    ),
                  ),
                ),
                //_________________________________________________________________________________4
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 4.0, right: 8.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/lost.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Apmaldijies",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LostPage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            //_________________________________________________________________________________5
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 4.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/bites.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Dzīvnieku kodums",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AnimalPage()));
                      },
                    ),
                  ),
                ),
                //_________________________________________________________________________________6
                Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 4.0, right: 8.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/flood.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Plūdi",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FloodPage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            //_________________________________________________________________________________7
            Row(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 4.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/landslide.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Nogruvums",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandslidePage()));
                      },
                    ),
                  ),
                ),
                //_________________________________________________________________________________8
                Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 4.0, right: 8.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/artillery.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Artilērijas apšaude",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ArtilleryPage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            //_________________________________________________________________________________9
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/occupation.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Okupācija",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OccupationPage()));
                      },
                    ),
                  ),
                ),
                //_________________________________________________________________________________10
                Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(left: 4.0, right: 8, top: 8),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/chem_bio.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Ķīmiskie \n draudi",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChemicalPage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            //_________________________________________________________________________________11

            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(left: 8.0, right: 4, top: 8),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/nuclear_explosion.jpeg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Kodoldraudi",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NuclearPage()));
                      },
                    ),
                  ),
                ),

                //_________________________________________________________________________________12
                Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(left: 4.0, right: 8, top: 8),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/earthquake.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Zemestrīce",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EarthquakePage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            //__________________________________________________________________13
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(
                          left: 8.0, right: 4, top: 8, bottom: 8),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/hurricane.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Viesuļvētra",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HurricanePage()));
                      },
                    ),
                  ),
                ),
                //_____________________________________________________________________________
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: height,
                    child: MaterialButton(
                      padding: EdgeInsets.only(
                          left: 4.0, right: 8, top: 8, bottom: 8),
                      textColor: Colors.white,
                      splashColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 8.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/cunami.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Cunami",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TsunamiPage()));
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
