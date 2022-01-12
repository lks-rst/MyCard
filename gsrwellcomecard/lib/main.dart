import 'package:flutter/material.dart';

void main() {
  runApp(
    MyCard()
  );
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          body: SafeArea(child: Center(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 50, backgroundColor: Color.fromRGBO(
                    161, 255, 255, 0.25),),
                Text('GSR Sistemas', style: TextStyle(fontSize: 45, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'DancingS'),),
                Text('OUT SOURCING', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'UbuntuM', letterSpacing: 2.5),),
                Card(child: Text('Fone', style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),),),
                Card(child: Text('Email', style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),),),
              ],
            ),
          )),
        ),
      );
  }
}
