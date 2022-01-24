// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:camera/camera.dart';
import 'package:darty/product.dart';
import 'package:flutter/material.dart';
import 'add-product.dart';
import 'homescreen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

// Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

// Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.camera}) : super(key: key);

  final CameraDescription camera;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darty',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      )),
      initialRoute: '/',
      routes: {
        '/': (context) => const Homescreen(),
        'frigo': (context) => const Frigo(),
        'add': (context) => AddProduct(camera: camera)
      },
    );
  }
}
