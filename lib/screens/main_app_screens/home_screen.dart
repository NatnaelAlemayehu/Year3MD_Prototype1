import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './excercise_list.dart';
import '../menu_screens/menu_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(context: context, builder: (context) => AlertDialog(
          title: Text(
            "Warning",
          ),
          content: Text(
            "Are You sure To Exit?",
          ),
          actions: <Widget>[
            FlatButton(onPressed:() {
              Navigator.of(context).pop(true);
            },
              child: Text(
                "Yes"
              ),
            ),
            FlatButton(onPressed:() {
              Navigator.of(context).pop(false);
            },
              child: Text(
                  "No"
              ),
            ),
          ],
        ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cardio'),
        ),
        drawer: Menudrawer(),
        body: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExcerciseList(level: 'Beginner'),
                    ),
                  );
                  // Navigator.pushNamed(
                  //   context,
                  //   ExcerciseList.id,
                  //   arguments: ExcerciseList(level: 'Beginner'),
                  // );
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        // borderRadius: BorderRadius.circular(24.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/home_screen1.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  ".",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26),
                                )),
                                SizedBox(width: 10.0),
                                Container(
                                    child: Icon(
                                  FontAwesomeIcons.heartBroken,
                                  color: Colors.white,
                                )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    ".",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Beginner",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExcerciseList(level: 'Intermediate'),
                    ),
                  );
                  // Navigator.pushNamed(
                  //   context,
                  //   ExcerciseList.id,
                  //   arguments: ExcerciseList(level: 'Intermediate'),
                  // );
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        // borderRadius: BorderRadius.circular(24.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/intermed.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  ".",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26),
                                )),
                                SizedBox(width: 10.0),
                                Container(
                                    child: Icon(
                                  FontAwesomeIcons.heartBroken,
                                  color: Colors.white,
                                )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    ".",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Intermediate",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExcerciseList(level: 'Advanced'),
                    ),
                  );
                  // Navigator.pushNamed(
                  //   context,
                  //   ExcerciseList.id,
                  //   arguments: ExcerciseList(level: 'Advanced'),
                  // );
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        // borderRadius: BorderRadius.circular(24.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/home_screen3.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  ".",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26),
                                )),
                                SizedBox(width: 10.0),
                                Container(
                                    child: Icon(
                                  FontAwesomeIcons.heartBroken,
                                  color: Colors.white,
                                )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    ".",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Advanced",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
