import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'fire_building_en.dart';
import 'fire_forest_en.dart';

class FireENPage extends StatelessWidget {
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
            'Fire',
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
          child: Column(
            children: [
              Row(
                children: [
                  //____________________________________________________________________________________
                  Container(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.50,
                      height: MediaQuery.of(context).size.height -
                          kToolbarHeight * 2.5,
                      child: MaterialButton(
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 255, 255, 255),
                        elevation: 8.0,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage('assets/fire_build.jpeg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "In building",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FireBuildingENPage()));
                        },
                      ),
                    ),
                  ),
                  //_____________________________________________________________________________________
                  Container(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.50,
                      height: MediaQuery.of(context).size.height -
                          kToolbarHeight * 2.5,
                      child: MaterialButton(
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Color.fromARGB(255, 255, 255, 255),
                        elevation: 8.0,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage('assets/fire_forest.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "In forest",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FireForestENPage()));
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
