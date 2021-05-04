import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:recipe_webapp/models/recipe_model.dart';
import 'package:recipe_webapp/widgets/DetailPagr/Ingredients.dart';
import 'package:recipe_webapp/widgets/DetailPagr/WeekRecipe.dart';
import 'package:recipe_webapp/widgets/DetailPagr/instruction.dart';

import 'package:velocity_x/velocity_x.dart';

class DetailPage extends StatefulWidget {
  final Recipe recipeList;

  const DetailPage({this.recipeList});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  final ref = FirebaseFirestore.instance.collection("recipe");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Dal Fry"),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Image.network(
                 widget.recipeList.recipeImage,
                  height: context.isMobile
                      ? context.percentHeight * 50
                      : context.percentHeight * 80,
                  width: context.screenWidth,
                  fit: BoxFit.cover,
                ),
                VxBox()
                    .red500
                    .height(context.isMobile
                        ? context.percentHeight * 40
                        : context.percentHeight * 60)
                    .width(context.isMobile
                        ? context.percentWidth * 40
                        : context.percentWidth * 20)
                    .roundedSM
                    .make()
                    .opacity75()
                    .p32(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.white,
                          size: context.isMobile ? 25 : 30,
                        ),
                        30.widthBox,
                        Text(widget.recipeList.recipeTime+"Min")
                            .text
                            .white
                            .size(context.isMobile ? 15 : 25)
                            .make()
                      ],
                    ).p32(),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: context.isMobile ? 25 : 30,
                        ),
                        30.widthBox,
                        Text(widget.recipeList.recipeServing+"People")
                            .text
                            .white
                            .size(context.isMobile ? 15 : 25)
                            .make()
                      ],
                    ).p32(),
                    Row(
                      children: [
                        Icon(
                          Icons.local_fire_department,
                          color: Colors.white,
                          size: context.isMobile ? 25 : 30,
                        ),
                        30.widthBox,
                        Text(widget.recipeList.recipeCal+" Calories")
                            .text
                            .white
                            .size(context.isMobile ? 15 : 25)
                            .make()
                      ],
                    ).p32(),
                  ],
                ).pOnly(top: 30, left: 30)
              ],
            ),
            VxDevice(
                mobile: VxBox(
                    child: Column(
                  children: [
                    10.heightBox,
                    Text("Ingredients:").text.xl2.white.semiBold.makeCentered(),
                    10.heightBox,
                    VxBox(
                        child:
                        Ingredient(widget.recipeList.recipeIngredients)

                        ).red500.make().w(context.screenWidth),
                    20.heightBox,
                    Text("Instructions:")
                        .text
                        .xl2
                        .white
                        .semiBold
                        .makeCentered(),
                    10.heightBox,
                      Instructions(widget.recipeList.recipeSteps),


                    20.heightBox,
                    Text("Recipes of the week:")
                        .text
                        .xl2
                        .white
                        .semiBold
                        .makeCentered(),
                    WeekRecipe().h(context.screenHeight * 0.4)


                  ],
                )).make().p16(),
                web: VxBox(
                  child: Stack(
                    children: [
                      // Image.network("https://image.freepik.com/free-photo/view-spices-frame-with-copy-space_23-2148723449.jpg",fit: BoxFit.cover,),

                      Column(
                        children: [
                          20.heightBox,
                          Row(
                            children: [
                              150.widthBox,
                              Text("Ingredients:")
                                  .text
                                  .xl2
                                  .white
                                  .semiBold
                                  .makeCentered(),
                              400.widthBox,
                              Text("Instructions:")
                                  .text
                                  .xl2
                                  .white
                                  .semiBold
                                  .makeCentered(),
                            ],
                          ),
                          10.heightBox,
                       Row(
                         children: [
                           VxBox(
                           child:
                           Ingredient(widget.recipeList.recipeIngredients)

                           ).red500.width(context.screenWidth*0.3).make(),
                           VxBox(
                               child:
                               Instructions(widget.recipeList.recipeSteps),

                           ).width(context.screenWidth*0.5).make()

                         ],
                       ),

                          40.heightBox,
                          Text("Recipes of the week:")
                              .text
                              .xl2
                              .white
                              .semiBold
                              .makeCentered(),
                          WeekRecipe().h(context.screenHeight * 0.4)
                        ],
                      ).p16(),
                    ],
                  ),
                ).width(context.screenWidth).make())
          ],
        ).scrollVertical());
  }
}
