import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_flutter/store_date/data_sore.dart';

import 'package:first_flutter/view_data.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
         options: FirebaseOptions(
            apiKey: "AIzaSyAlWAs23tkLpKALNx57ZWdIqGKiqX0AkzU",
            appId: "1:740488168313:android:06c03331da7bf85f8fe5a8",
            messagingSenderId: "740488168313",
            projectId: "flutter-project-abi",
          ))
      :  await Firebase.initializeApp();


    runApp(  const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: view_data_Screen(),
    );
  }
}
// Before start the video setup your project with firebase
// If you have any problem to setup then firebase setup video is in i button and description