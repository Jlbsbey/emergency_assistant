import 'dart:convert';
import 'dart:ui';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';
import 'dart:io' as io;

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
import 'commons/notes.dart';
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
      language = "ru";
    } else if (deviceLocale.languageCode == "lv") {
      language = "lv";
    } else {
      language = "en";
    }
    return MyHomePage();
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class TextContent {
  Future<Map<String, dynamic>> loadContent() async {
    final String jsonContent =
    await rootBundle.loadString('assets/json/names.json');
    final data = await json.decode(jsonContent)[language];
    return data;
  }
}

class ButtonData {
  String text_ru;
  String text_en;
  String text_lv;
  String imagePath;
  Widget route;
  int order;

  ButtonData({required this.text_ru,required this.text_en,required this.text_lv, required this.imagePath, required this.route, required this.order});
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextContent _textContent;

  Map<String, dynamic>? _content;

  void _loadContent() async {
    final content = await _textContent.loadContent();
    setState(() {
      _content = content;
    });
  }

  @override
void initState() {
    _textContent = TextContent();
    _loadContent();
    initializeList();
    super.initState();
  }

  Future<void> initializeList() async {
    String asset = "";
    final directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/order.txt');
    //file.writeAsStringSync("0123456789abcd");
    if(await io.File('${directory.path}/order.txt').exists()){
      asset = await file.readAsString();
    }else{
      asset = await loadAsset();
      file.writeAsStringSync(asset);
    }
    try{
      List<int> order = convertHexToIntegerList(asset);
      //for(int i=0; i< order.length; i++){
      //  print(order[i]);
      //}
      if(buttonList.length != 0){
        buttonList.clear();
      }
      for(int i=0; i<14; i++){
        for(int j=0; j<14; j++){
          if(order[i] == initList[j].order){
            buttonList.insert(i, initList[j]);
          }
        }
      }
    }catch(e){
      print(e);
    }

    setState(() {});
  }
  Future<String> loadAsset() async {
    Future<String> hex = rootBundle.loadString('assets/json/order.txt');
    return hex;
  }

  List<int> convertHexToIntegerList(String hexString) {
    List<String> hexList = [];
    List<int> finalList = [];
    if (hexString.length == 14) {
      for(int i = 0; i< 14; i++){
        hexList.insert(i, hexString[i]);
      }
      for(int i=0; i<14; i++){
        finalList.insert(i, int.parse(hexList[i], radix: 16));
      }
      return finalList;
    }
    return [];
  }

  List<ButtonData> buttonList = [];
  List<ButtonData> initList = [
    ButtonData(
      text_lv: "Vispārīgie padomi",
      text_en: "General recomendations",
      text_ru: "Общие советы",
      imagePath: "assets/general_guideline.jpeg",
      route: GeneralPage(),
      order: 0,
    ),
    ButtonData(
      text_lv: "Gāzes noplūde",
      text_en: "Gas leak",
      text_ru: "Утечка газа",
      imagePath: "assets/gas_leak.jpeg",
      route: GasLeakPage(),
      order: 1,
    ),
    ButtonData(
      text_lv: "Ugunsgrēks",
      text_en: "Fire",
      text_ru: "Пожар",
      imagePath: "assets/fire.jpg",
      route: FirePage(),
      order: 2,
    ),
    ButtonData(
      text_lv: "Apmaldījies",
      text_en: "Lost in forest",
      text_ru: "Потерялись",
      imagePath: "assets/lost.jpg",
      route: LostPage(),
      order: 3,
    ),
    ButtonData(
        text_ru : "Укус животного",
        text_en : "Animal bite",
        text_lv: "Dzīvnieku kodums",
        imagePath : "assets/bites.jpg",
        route : AnimalPage(),
      order: 4,
    ),
    ButtonData(
        text_ru : "Наводнение",
        text_en : "Flood",
        text_lv: "Plūdi",
        imagePath : "assets/flood.jpg",
        route : FloodPage(),
      order: 5,
    ),
    ButtonData(
        text_ru : "Оползень",
        text_en : "Landslide",
        text_lv: "Nogruvums",
        imagePath : "assets/landslide.jpg",
        route : LandslidePage(),
        order: 6,
    ),
    ButtonData(
        text_ru : "Артобстрел",
        text_en : "Shelling",
        text_lv: "Artilērijas apšaude",
        imagePath : "assets/artillery.jpg",
        route : ArtilleryPage(),
      order: 7,
    ),
    ButtonData(
        text_ru : "Оккупация",
        text_en : "Military occupation",
        text_lv: "Okupācija",
        imagePath : "assets/occupation.jpg",
        route : OccupationPage(),
      order: 8,
    ),
    ButtonData(
        text_ru : "Химическая атака",
        text_en : "Chemical attack",
        text_lv: "Ķīmiskie \n draudi",
        imagePath : "assets/chem_bio.jpg",
        route : ChemicalPage(),
      order: 9,
    ),
    ButtonData(
        text_ru : "Ядерная угроза",
        text_en : "Nuclear attack",
        text_lv: "Kodoldraudi",
        imagePath : "assets/nuclear_explosion.jpeg",
        route : NuclearPage(),
      order: 10,
    ),

    ButtonData(
        text_ru : "Землетрясение",
        text_en : "Earthquake",
        text_lv: "Zemestrīce",
        imagePath : "assets/earthquake.jpg",
        route : EarthquakePage(),
      order: 11,
    ),
    ButtonData(
        text_ru : "Ураган",
        text_en : "Hurricane",
        text_lv: "Viesuļvētra",
        imagePath : "assets/hurricane.jpg",
        route : HurricanePage(),
      order: 12,
    ),
    ButtonData(
        text_ru : "Цунами",
        text_en : "Tsunami",
        text_lv: "Cunami",
        imagePath : "assets/cunami.jpg",
        route : TsunamiPage(),
      order: 13,
    ),
  ];
  String intToHex(List<int> indexes){
    String hex = "";
    for(int i=0; i<indexes.length; i++){
      hex += indexes[i].toRadixString(16);
    }
    return hex;
  }
  Future<void> writeToFile(List<int> indexes) async {
    String hex = intToHex(indexes);
    final directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/order.txt');
    file.writeAsStringSync('');
    file.writeAsStringSync(hex);
    initializeList();
  }
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
        title: Text(
          _content?["name"] ?? "",
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
                        _content?["menu"] ?? "",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.luggage),
                    title: Text(_content?["lostdoc"] ?? ""),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LostDocPage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.source),
                    title: Text(_content?["info"] ?? ""),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SourcePage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.note_add),
                    title: Text(_content?["notes"] ?? ""),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotesPage()));
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
                          setState(() {
                            language == "lv"
                                ? language = "ru"
                                : language == "ru"
                                ? language = "lv"
                                : language = "ru";
                            _textContent = TextContent();
                            _loadContent();
                            Navigator.pop(context);
                          });
                        },
                        icon: SizedBox(
                          height: 40,
                          child: Image.asset(_content?["imagelang1"] ?? ""),
                        ),
                        label: Text(
                          _content?["lang1"] ?? "",
                          style: TextStyle(fontSize: 16),
                        ),
                        //child: child
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          setState(() {
                            language == "lv"
                                ? language = "en"
                                : language == "ru"
                                ? language = "en"
                                : language = "lv";
                            _textContent = TextContent();
                            _loadContent();
                            Navigator.pop(context);
                          });
                        },
                        icon: SizedBox(
                          height: 40,
                          child: Image.asset(_content?["imagelang2"] ?? ""),
                        ),
                        label: Text(
                          _content?["lang2"] ?? "",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: ReorderableGridView.count(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            onReorder: (oldIndex, newIndex){
                List<int> indexes = [];
                int elementToMove = buttonList[oldIndex].order;
                for(int i = 0; i< buttonList.length; i++){
                  indexes.add(buttonList[i].order);
                }
                if (oldIndex < newIndex) {
                  indexes.insert(newIndex + 1, elementToMove);
                  indexes.removeAt(oldIndex);
                } else {
                  indexes.insert(newIndex, elementToMove);
                  indexes.removeAt(oldIndex + 1);
                }
                writeToFile(indexes);
            },
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            children: buttonList.asMap().entries.map((entry) {
              final index = entry.key;
              final buttonData = entry.value;
              return Container(
                key: ValueKey("$index"),
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: height,
                  child: MaterialButton(
                    padding: EdgeInsets.all(0.0),
                    textColor: Colors.white,
                    splashColor: Color.fromARGB(255, 255, 255, 255),
                    elevation: 8.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => buttonData.route));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage(buttonData.imagePath),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4),
                            BlendMode.dstATop,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          language == "lv"
                              ? buttonData.text_lv
                              : language == "ru"
                              ? buttonData.text_ru
                              : buttonData.text_en,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          )

        ),
      ),
    );
  }
}
