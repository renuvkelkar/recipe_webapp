import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:recipe_webapp/models/recipe_model.dart';
import 'package:recipe_webapp/pages/detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

class ListingPage extends StatefulWidget {
  final String catname;
  ListingPage({this.catname});

  @override
  _ListingPageState createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  final ref = FirebaseFirestore.instance.collection("recipe");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Listing Page")
      ),
      body: StreamBuilder(
          stream: ref.where("catName", isEqualTo: widget.catname).snapshots(),
        builder: (_, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
           List<Recipe> recipeList = snapshot.data.docs.map((e) => Recipe.fromJson(e.data())).toList();
            return  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.network("https://image.freepik.com/free-photo/indian-style-paneer-tikka_136595-5180.jpg",width: context.screenWidth,
                      height: context.screenHeight*0.5,
                      fit: BoxFit.cover,),
                    Text(widget.catname).text.size(context.isMobile?40:50).semiBold.white.make().pOnly(top: 100,left: 100)
                  ],
                ),
                Container(
                  height: context.screenHeight*0.5,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: context.isMobile?Axis.vertical:Axis.horizontal,
                      itemCount: recipeList.length,
                      itemBuilder: (context,index){
                       // print(recipeList.length);
                        return //Text(recipeList[index].recipeName);
                          InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailPage( recipeList: recipeList[index],)));
                          },
                          child:
                               VxBox(
                                 child: Column(
                                   children: [
                                     Image.network(recipeList[index].recipeImage),
                                     Text(recipeList[index].recipeName),
                                   ],
                                 ),
                               ).width(context.isMobile?context.screenWidth:context.screenWidth*0.3).make(),
                        );
                      }
                      ),
                ),
              ],
            ).scrollVertical();
          }
          else {
            return CircularProgressIndicator();
          }
        }));

  }
}
