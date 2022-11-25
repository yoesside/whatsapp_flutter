
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("The hacker WhatsApp"),
          // ignore: prefer_const_constructors
          backgroundColor: Color.fromARGB(255, 11, 185, 153),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              openwhatsapp();
            },
            // ignore: prefer_const_constructors
            child: Text("Open whatsApp"),
          ),
        ),
      ),
    );
  }
}

openwhatsapp() {
  return launchUrl(
    Uri.parse(
      // 'https://wa.me/1234567890' //you use this url also
      'whatsapp://send?phone=+6283147690333',//put your number here
    ),
  );
}
