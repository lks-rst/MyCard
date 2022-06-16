import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

void main() => runApp(BeforeCard());

class BeforeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('GSR Sistemas'),
        // ),
        body: MyCard(),
      ),
    );
  }
}

//TODO: Add the connections to the email and to the phone/whatsapp;
//TODO: Add a many soscial media connection (facebook, twitter, instagram, linkedin)
//TODO: Add internationalization;
//TODO: Find the way to create a file/class with constatns to use;
class MyCard extends StatelessWidget {
  Future<void> main() async {
    const phoneNumber = '15551234567';
    const text = 'I\'m interested in in your "Ferrari" car for sale!';
    const withPhoneNumberAndText = WhatsAppUnilink(
      phoneNumber: phoneNumber,
      text: text,
    );
    const withPhoneNumber = WhatsAppUnilink(phoneNumber: phoneNumber);
    const withText = WhatsAppUnilink(text: text);

    final html =
        '''<html><head><title>whatsapp unilink example</title></head><body><a href="$withPhoneNumberAndText">With phone number and text.</a><br><a href="$withPhoneNumber">With phone number.</a><br><a href="$withText">With text</a></body></html>''';

    print('Starting server...');
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
    print('Server available on http://localhost:3000');

    await for (final request in server) {
      request.response
        ..statusCode = HttpStatus.ok
        ..headers.contentType = ContentType.html
        ..write(html);
      await request.response.close();
    }
  }

  /*
// ...somewhere in your Flutter app...
  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+001-(555)1234567',
      text: "Hey! I'm inquiring about the apartment listing",
    );
    // Convert the WhatsAppUnilink instance to a string.
    // Use either Dart's string interpolation or the toString() method.
    // The "launch" method is part of "url_launcher".
    await launch('$link');
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(178, 235, 242, 0.5),
      body: SafeArea(
          child: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              //backgroundColor: Color.fromRGBO(0, 151, 167, .1),
              backgroundImage: AssetImage(
                //'images/gsr_2.png',
                'images/Simbolo.png',
                //'images/Logo-GSR.png',
              ),
            ),
            Text(
              'GSR',
              style: TextStyle(
                  fontSize: 65,
                  color: Color.fromRGBO(33, 33, 33, 1.0),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mundial'),
            ),
            Text(
              'SISTEMAS',
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(33, 33, 33, 1.0),
                  fontWeight: FontWeight.w100,
                  fontFamily: 'Arkibal'),
            ),
            Text(
              'OUT SOURCING',
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(33, 33, 33, 1.0),
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Arkibal',
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
            FlatButton(
              onPressed: main,
              child: Card(
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
            ),
            FlatButton(
              onPressed: null,
              child: Card(
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
            ),
            SizedBox(
              height: 5,
              child: Divider(
                color: Color.fromRGBO(205, 220, 57, 1.0),
                thickness: .75,
              ),
              width: 300,
            ),
            FlatButton(
              onPressed: () => _onBasicAlertPressed(context),
              child: Card(
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
                      'Sobre nós',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
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
    );
  }

// The easiest way for creating RFlutter Alert

//Somos uma empresa especializada em gerencia de projetos, e desenvolvimento de
// software que tem como principal objetivo tornar sua tarefa de desenvolvimento
// e gestão de equipa mais simples.
//Possuímos profissionais altamente qualificados, prontos para assumir as
// responsábiliades desde a escrita de código para aplicações até gestão de
// equipes de desenvolvimento e multifuncionais.
//Se sua necessidade é uma equipe de desenvolvedores para construção de um
// sistema interno, uma equipe para analise de requisitos e viabilidade
// viabilidade de sistema, ou um gestor de tecnologia de maneira geral, entre
// em contato conosco.
  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      title: "SOBRE NÓS",
      desc: "A GSR Sistemas têm experiência de mais de 10 anos no mercado em "
          "análise e desenvolvimento de sistemas focada na atuação em outras "
          "empresas, como outsourcing."
          "Sua principal preocupação é atender a demanda de seus clientes com "
          "profissionalismo, inovação e confiabilidade de seus serviços.",
    ).show();
  }
}
