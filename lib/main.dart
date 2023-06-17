/*import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/

import 'dart:ui';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:school/commons/ru/main_ru.dart';

import 'commons/en/main_en.dart';
import 'commons/lv/animal_bite.dart';
import 'commons/lv/artillery.dart';
import 'commons/lv/chemical_threat.dart';
import 'commons/lv/earthquake.dart';
import 'commons/lv/fire.dart';
import 'commons/lv/flood.dart';
import 'commons/lv/gas_leak.dart';
import 'commons/lv/general_guidelines.dart';
import 'commons/lv/hurricane.dart';
import 'commons/lv/landslide.dart';
import 'commons/lv/lost.dart';
import 'commons/lv/lost_doc.dart';
import 'commons/lv/nuclear_threat.dart';
import 'commons/lv/occupation.dart';
import 'commons/lv/sources.dart';
import 'commons/lv/tsunami.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  //final String defaultSystemLocale = Platform.localeName;
  //final List<Locale> systemLocales = WidgetsBinding.instance.window.locales;

  /*final appSupportedLocales = <Locale>[
    Locale('ru_LV'),
    Locale('en_LV'),
    Locale('lv_LV'),
    Locale('ru'),
    Locale('en'),
    Locale('lv'),
  ];*/

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
