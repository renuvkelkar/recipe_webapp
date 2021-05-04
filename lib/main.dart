import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:http/http.dart' as http;
import 'package:recipe_webapp/pages/ListingPage.dart';
import 'package:recipe_webapp/pages/detail_page.dart';
import 'package:url_strategy/url_strategy.dart';

import 'pages/homePage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    //     getPages: [
    //     GetPage(name:'/listingPage', page: ()=>   ListingPage(),),
    //       GetPage(name:'/DetailPage', page: ()=>   DetailPage(),),
    //
    //
    //
    // ],
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isUploaded = false;

  @override
  void initState() {
    super.initState();

    upload();
  }

  Future upload() async {
    /// Initialize Firebase
    await Firebase.initializeApp();

    /// Upload document to firestore
    final refUser = FirebaseFirestore.instance.collection('user').doc();
    await refUser.set({'username': 'alex'});

    /// Upload file to firebase storage - web not supported yet
    if (!kIsWeb) {
      final response = await http.get(
          'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png');
      final imageBytes = response.bodyBytes;

      final refImage = FirebaseStorage().ref().child('images/example.png');
      final uploadTask = refImage.putData(imageBytes);
      await uploadTask.onComplete;
    }

    setState(() {
      isUploaded = true;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          isUploaded ? 'Uploaded!' : 'Uploading...',
          style: TextStyle(fontSize: 24),
        ),
      ));
}
