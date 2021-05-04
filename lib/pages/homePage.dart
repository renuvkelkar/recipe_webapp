import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recipe_webapp/widgets/Home/Header.dart';
import 'package:recipe_webapp/widgets/Home/content.dart';
import 'package:recipe_webapp/widgets/Home/content2.dart';
import 'package:recipe_webapp/widgets/Home/menu.dart';
import 'package:recipe_webapp/widgets/Home/swipers.dart';
import "package:velocity_x/velocity_x.dart";

import 'bannerPage.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();

    upload();
  }
  Future upload() async {
    /// Initialize Firebase
    await Firebase.initializeApp();

    // /// Upload document to firestore
    // final refUser = FirebaseFirestore.instance.collection('user').doc();
    // await refUser.set({'username': 'alex'});
  }


  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

        appBar: context.isMobile
            ? AppBar(

          backgroundColor: Colors.black,
        ):null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          BannerPage().h(context.screenHeight*0.5),
          10.heightBox,
          Menu().h(70),
          10.heightBox,
          Text("Most Popular Recipes ").text.red500.xl3.semiBold.make().p8(),
          Content2().h(context.isMobile?300:200),
          10.heightBox,
          Text("Indian Food Stories ").text.red500.xl3.semiBold.make().p8(),
          Content()


        ],
      ).scrollVertical(),
    );
  }
}
