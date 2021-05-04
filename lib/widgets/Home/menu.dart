
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_webapp/models/category_model.dart';
import 'package:recipe_webapp/pages/ListingPage.dart';
import 'package:recipe_webapp/pages/detail_page.dart';
import 'package:velocity_x/velocity_x.dart';
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
 final ref = FirebaseFirestore.instance.collection("category");
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: ref.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot>snapShot){
        if(snapShot.hasData){

        List<Category> dataList = snapShot.data.docs.map((e) => Category.fromJson(e.data())).toList();//connection with model class
          return Center(
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // ignore: deprecated_member_use
                  itemCount: snapShot.data.documents.length,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ListingPage(catname:dataList[index].catName)));
                      //  Get.toNamed('/listingPage',arguments:[],parameters: );

                      },
                      child: VxBox(
                          child: Text(dataList[index].catName).text.white.make().p16()
                      ).red500.gray800.roundedLg.makeCentered().p8(),
                    );
                  }),
            ),
          );
        }
        else{
          return CircularProgressIndicator();
        }

        });
  }
}
