import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Matchy"),
          backgroundColor: Colors.indigo[800],
        ),
        body: ImagePage(),
      ),
    );
  }
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  var leftImageNumber = 2;
  var rightImageNumber = 3;
  @override
  Widget build(BuildContext context) {
    void changeImage() {
      leftImageNumber = Random().nextInt(8) + 1;
      rightImageNumber = Random().nextInt(8) + 1;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber ? "Winner" : "Try again",
          style: TextStyle(
            fontSize: 42,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        changeImage();
                      });
                      print("nzelit 3lih ");
                    },
                    child: Ink.image(
                      image: AssetImage('images/image-$leftImageNumber.png'),
                      height: 150,
                      fit: BoxFit.cover,
                    )),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        changeImage();
                      });
                      print("nzelit 3lih ");
                    },
                    child: Ink.image(
                      image: AssetImage('images/image-$rightImageNumber.png'),
                      // width: 50,
                      height: 150,
                      fit: BoxFit.cover,
                    )),
              )),
            ],
          ),
        )
      ],
    );
  }
}
