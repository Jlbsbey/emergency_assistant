import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school/main.dart';

import '../en/main_en.dart';
import 'animal_bite_ru.dart';
import 'artillery_ru.dart';
import 'chemical_threat_ru.dart';
import 'earthquake_ru.dart';
import 'fire_ru.dart';
import 'flood_ru.dart';
import 'gas_leak_ru.dart';
import 'general_guidelines_ru.dart';
import 'hurricane_ru.dart';
import 'landslide_ru.dart';
import 'lost_doc_ru.dart';
import 'lost_ru.dart';
import 'nuclear_threat_ru.dart';
import 'occupation_ru.dart';
import 'sources_ru.dart';
import 'tsunami_ru.dart';

class MyHomeRUPage extends StatelessWidget {
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
          'Помощник в \nчрезвычайных ситуациях',
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
                        'Меню',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.luggage),
                    title: Text('Потерял документы за границей'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LostDocRUPage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.source),
                    title: Text('Информация о приложении'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SourceRUPage()));
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
                      width: 180,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        },
                        icon: SizedBox(
                          height: 40,
                          child: Image.asset('lib/icons/latvia.png'),
                        ),
                        label: Text(
                          "Латышский",
                          style: TextStyle(fontSize: 16),
                        ),
                        //child: child
                      ),
                    ),
                    SizedBox(
                      width: 180,
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
                        label: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "English",
                            style: TextStyle(fontSize: 16),
                          ),
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
                      padding: EdgeInsets.only(left: 8.0, right: 4, top: 8),
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
                            "Общие советы",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GeneralRUPage()));
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
                      padding: EdgeInsets.only(left: 4.0, right: 8, top: 8),
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
                            "Утечка газа",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GasLeakRUPage()));
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
                      padding: EdgeInsets.only(left: 8.0, right: 4, top: 8),
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
                            "Пожар",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FireRUPage()));
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
                      padding: EdgeInsets.only(left: 4.0, right: 8, top: 8),
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
                            "Заблудился",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LostRUPage()));
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
                      padding: EdgeInsets.only(left: 8.0, right: 4, top: 8),
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
                            "Укус животного",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AnimalRUPage()));
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
                      padding: EdgeInsets.only(left: 4.0, right: 8, top: 8),
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
                            "Наводнение",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FloodRUPage()));
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
                      padding: EdgeInsets.only(left: 8.0, right: 4, top: 8),
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
                            "Оползень",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandslideRUPage()));
                      },
                    ),
                  ),
                ),

                //_____________________________________________________________________________8
                Container(
                  alignment: Alignment.centerLeft,
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
                            "Цунами",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TsunamiRUPage()));
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
                      padding: EdgeInsets.only(left: 8.0, right: 4, top: 8),
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
                            "Ураган",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HurricaneRUPage()));
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
                            "Землетрясение",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EarthquakeRUPage()));
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
                  alignment: Alignment.centerRight,
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
                            "Артобстрел",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ArtilleryRUPage()));
                      },
                    ),
                  ),
                ),
                //_________________________________________________________________________________12
                Container(
                  alignment: Alignment.centerLeft,
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
                            "Оккупация",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OccupationRUPage()));
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
                  alignment: Alignment.centerRight,
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
                            "Химическая атака",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChemicalRUPage()));
                      },
                    ),
                  ),
                ),
                //_________________________________________________________________________________14
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
                            "Ядерная угроза",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NuclearRUPage()));
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
