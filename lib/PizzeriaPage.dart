import 'package:flutter/material.dart';

class PizzeriaPage extends StatelessWidget {
  const PizzeriaPage({Key? key}) : super(key: key);

  Card buildKey(AssetImage img, String txt) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      color: Colors.greenAccent[80],
      margin: EdgeInsets.all(12.0),
      elevation: 20,
      child: Row(
        children: [
          Expanded(
            child: Image(
              image: img,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              txt,
              style: TextStyle(
                  fontSize: 24, fontFamily: 'Oswald', letterSpacing: 1),
            ),
          ),
        ],
      ),
    );
  }

  //SizedBox box() => SizedBox(width: 20); //This is the way of writing a single line function with return type. it is arrow function

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white70,
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restaurant_menu,
                    size: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Pizzeria',
                    style: TextStyle(
                        color: Colors.green[700],
                        fontSize: 40,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
          ),
          backgroundColor: Colors.green[200],
          body: ListView(
            children: [
              buildKey(AssetImage('images/margherita.jpg'), 'Margherita Pizza'),
              buildKey(AssetImage('images/pepperoni.jpg'), 'Pepperoni Pizza'),
              buildKey(
                  AssetImage('images/extravagenza.jpg'), 'Extravagenza Pizza'),
              buildKey(AssetImage('images/olive.jpg'), 'Olive Pizza'),
              buildKey(
                  AssetImage('images/chickenTikka.jpg'), 'Chicken Tikka Pizza'),
              buildKey(AssetImage('images/momo.jpg'), 'Momos Pizza'),
              buildKey(AssetImage('images/gree.jpg'), 'Green Park Pizza'),
              buildKey(
                  AssetImage('images/paneer.jpg'), 'Tandoori Paneer Pizza'),
            ],
          ),
        ),
      ),
    );
  }
}
