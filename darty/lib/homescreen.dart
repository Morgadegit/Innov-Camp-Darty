import 'dart:ui';
import 'package:darty/login.dart';
import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Indexer(children: [
      Indexed(
          index: 2,
          child: ClipRRect(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    ),
                    child: Container(
                        margin:
                            const EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 80.0),
                        padding: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            border: Border.all(color: Colors.black)),
                        child: Center(
                            child: Image.asset('images/logo.png',
                                width: 300, height: 100))),
                  )))),
      Indexed(
          index: 1,
          child: ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.modulate),
              child: AspectRatio(
                  aspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height,
                  child: Image.asset('images/stock-people.png',
                      fit: BoxFit.cover))))
    ]));
  }
}
