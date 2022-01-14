import 'package:flutter/material.dart';

void main() {
  runApp(MyCard());
}

//TODO: Add a "about us section" via button or via menu;
//TODO: Add the connections to the email and to the phone/whatsapp;
class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(178, 235, 242, 0.5),
        body: SafeArea(
            child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromRGBO(0, 151, 167, .1),
              ),
              Text(
                'GSR Sistemas',
                style: TextStyle(
                    fontSize: 45,
                    color: Color.fromRGBO(33, 33, 33, 1.0),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DancingS'),
              ),
              Text(
                'OUT SOURCING',
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(33, 33, 33, 1.0),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'UbuntuM',
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
                child: Divider(
                  //CDDC39
                  color: Color.fromRGBO(205, 220, 57, 1.0),
                  thickness: .75,
                ),
                width: 150,
              ),
              SizedBox(
                height: 5,
                child: Divider(
                  color: Color.fromRGBO(205, 220, 57, 1.0),
                  thickness: .75,
                ),
                width: 300,
              ),
              SizedBox(
                height: 5,
                child: Divider(
                  color: Color.fromRGBO(205, 220, 57, 1.0),
                  thickness: .75,
                ),
                width: 150,
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                //00BCD4
                color: Color.fromRGBO(0, 188, 212, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                      color: Color.fromRGBO(0, 151, 167, 1.0),
                    ),
                    title: Text(
                      '+55 054 9 9156-6150',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Card(
                color: Color.fromRGBO(0, 188, 212, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(
                      //0097A7
                      Icons.email,
                      size: 30,
                      color: Color.fromRGBO(0, 151, 167, 1.0),
                    ),
                    title: Text(
                      'lks.rst@gmail.com',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              /*
            Card(
                  color: Colors.cyan,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                    children: [
                      Icon(Icons.phone, size: 30, color: Color.fromRGBO(
                          255, 255, 255, 1.0),),
                      SizedBox(width: 15,),
                      Text('+55 054 9 9156-6150', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                    ],
                ),
                  ),),
                Card(
                  color: Colors.cyan,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.email, size: 30, color: Color.fromRGBO(
                            255, 255, 255, 1.0),),
                        SizedBox(width: 15,),
                        Text('lks.rst@gmail.com', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),),
                */
            ],
          ),
        )),
      ),
    );
  }
}
