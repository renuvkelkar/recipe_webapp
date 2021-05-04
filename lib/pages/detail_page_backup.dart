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
            // VxDevice(
            //     mobile: VxBox(
            //         child: Column(
            //       children: [
            //         10.heightBox,
            //         Text("Ingredients:").text.xl2.white.semiBold.makeCentered(),
            //         10.heightBox,
            //         // VxBox(
            //         //     child:
            //         //     Ingredient(widget.recipeList.recipeIngredients)
            //         //
            //         //     ).red500.make().w(context.screenWidth),
            //         20.heightBox,
            //         Text("Instructions:")
            //             .text
            //             .xl2
            //             .white
            //             .semiBold
            //             .makeCentered(),
            //         10.heightBox,
            //          //
            //          // Instructions(widget.recipeList.recipeSteps),
            //
            //         // VxBox(
            //         //     child: Stack(
            //         //   children: [
            //         //     Container(
            //         //         child: ListView(
            //         //       shrinkWrap: true,
            //         //       children: [
            //         //         Row(
            //         //           children: [
            //         //             Icon(
            //         //               Icons.assignment_turned_in_outlined,
            //         //               color: Colors.red.shade800,
            //         //             ).pOnly(left: 30, right: 30),
            //         //             Text("To a pressure cooker add toor dal along with turmeric, 1 teaspoon salt and 3 cups water.")
            //         //                 .text
            //         //                 .white
            //         //                 .make()
            //         //                 .p8()
            //         //                 .box
            //         //                 .black
            //         //                 .make()
            //         //                 .opacity75()
            //         //                 .expand(),
            //         //           ],
            //         //         ),
            //         //         Row(
            //         //           children: [
            //         //             Icon(
            //         //               Icons.assignment_turned_in_outlined,
            //         //               color: Colors.red.shade800,
            //         //             ).pOnly(left: 30, right: 30),
            //         //             Text("½ cup chopped onions or 1 medium sized onion")
            //         //                 .text
            //         //                 .white
            //         //                 .make()
            //         //                 .p8()
            //         //                 .box
            //         //                 .black
            //         //                 .make()
            //         //                 .opacity75()
            //         //                 .expand(),
            //         //           ],
            //         //         ),
            //         //         Row(
            //         //           children: [
            //         //             Icon(
            //         //               Icons.assignment_turned_in_outlined,
            //         //               color: Colors.red.shade800,
            //         //             ).pOnly(left: 30, right: 30),
            //         //             Text("Rinse the lentils and add them to a 3 litre pressure cooker. You can also cook the lentils in a pot. Just soak the lentils for an hour or two before you cook them in a pot.")
            //         //                 .text
            //         //                 .white
            //         //                 .make()
            //         //                 .p8()
            //         //                 .box
            //         //                 .black
            //         //                 .make()
            //         //                 .opacity75()
            //         //                 .expand(),
            //         //           ],
            //         //         ),
            //         //         Row(
            //         //           children: [
            //         //             Icon(
            //         //               Icons.assignment_turned_in_outlined,
            //         //               color: Colors.red.shade800,
            //         //             ).pOnly(left: 30, right: 30),
            //         //             Text("Mash the cooked lentils with a wired whisk or with a spoon and keep aside. If the consistency looks thick, then add some water to get a medium consistency. Then simmer for 3 to 4 minutes.")
            //         //                 .text
            //         //                 .white
            //         //                 .make()
            //         //                 .p8()
            //         //                 .box
            //         //                 .black
            //         //                 .make()
            //         //                 .opacity75()
            //         //                 .expand(),
            //         //           ],
            //         //         ),
            //         //         Row(
            //         //           children: [
            //         //             Icon(
            //         //               Icons.assignment_turned_in_outlined,
            //         //               color: Colors.red.shade800,
            //         //             ).pOnly(left: 30, right: 30),
            //         //             Text("To a pressure cooker add toor dal along with turmeric, 1 teaspoon salt and 3 cups water.")
            //         //                 .text
            //         //                 .white
            //         //                 .make()
            //         //                 .p8()
            //         //                 .box
            //         //                 .black
            //         //                 .make()
            //         //                 .opacity75()
            //         //                 .expand(),
            //         //           ],
            //         //         ),
            //         //       ],
            //         //     )
            //         //         // ListView.builder(
            //         //         //     shrinkWrap: true,
            //         //         //     itemCount: 10,
            //         //         //     itemBuilder: (context,index){
            //         //         //       return Text("Ingredients").text.white.make().p4().box.gray800.make().opacity75();
            //         //         //     }),
            //         //         ),
            //         //   ],
            //         // )).black.make().opacity75().w(context.screenWidth),
            //         20.heightBox,
            //         Text("Recipes of the week:")
            //             .text
            //             .xl2
            //             .white
            //             .semiBold
            //             .makeCentered(),
            //         // WeekRecipe().h(context.screenHeight * 0.4)
            //
            //         // ContainedTabBarView(
            //         //
            //         //   tabs: [
            //         //     Text('First', style: TextStyle(color: Colors.white)),
            //         //     Text('Second', style: TextStyle(color: Colors.white))
            //         //   ],
            //         //   views: [Container(
            //         //     height: 300,
            //         //       width: context.screenWidth,
            //         //       color: Colors.red),
            //         //     Container(
            //         //         width: context.screenWidth,
            //         //
            //         //         color: Colors.green)],
            //         //   onChange: (index) => print(index),
            //         // ),
            //
            //         // TabBar(
            //         //   controller: controller,
            //         //     indicatorColor: Colors.red,
            //         //     indicatorSize: TabBarIndicatorSize.tab,
            //         //     labelColor: Colors.red,
            //         //     unselectedLabelColor: Colors.grey.shade400,
            //         //     labelPadding: Vx.m16,
            //         //
            //         //     tabs: [
            //         //   Icon(Icons.list),
            //         //   Icon(Icons.restaurant_menu)
            //         // ]),
            //         // TabBarView(
            //         //   controller: controller,
            //         //   children: <Widget>[
            //         //     Icon(Icons.directions_car),
            //         //     Icon(Icons.directions_transit),
            //         //
            //         //
            //         //   ],
            //         // ).expand()
            //       ],
            //     )).make().p16(),
            //     web: VxBox(
            //       child: Stack(
            //         children: [
            //           // Image.network("https://image.freepik.com/free-photo/view-spices-frame-with-copy-space_23-2148723449.jpg",fit: BoxFit.cover,),
            //
            //           Column(
            //             children: [
            //               20.heightBox,
            //               Row(
            //                 children: [
            //                   150.widthBox,
            //                   Text("Ingredients:")
            //                       .text
            //                       .xl2
            //                       .white
            //                       .semiBold
            //                       .makeCentered(),
            //                   400.widthBox,
            //                   Text("Instructions:")
            //                       .text
            //                       .xl2
            //                       .white
            //                       .semiBold
            //                       .makeCentered(),
            //                 ],
            //               ),
            //               10.heightBox,
            //               Row(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   VxBox(
            //                           child: ListView(
            //                     shrinkWrap: true,
            //                     children: [
            //                       Row(
            //                         children: [
            //                           Icon(
            //                             Icons.assignment_turned_in_outlined,
            //                             color: Colors.white,
            //                           ).pOnly(left: 30, right: 30),
            //                           Text("1 cup toor dal 200 grams,")
            //                               .text
            //                               .white
            //                               .make()
            //                               .p16()
            //                               .box
            //                               .red500
            //                               .make()
            //                               .expand(),
            //                         ],
            //                       ),
            //                       Row(
            //                         children: [
            //                           Icon(
            //                             Icons.assignment_turned_in_outlined,
            //                             color: Colors.white,
            //                           ).pOnly(left: 30, right: 30),
            //                           Text("1/2 teaspoon turmeric powder")
            //                               .text
            //                               .white
            //                               .make()
            //                               .p16()
            //                               .box
            //                               .red500
            //                               .make()
            //                               .expand(),
            //                         ],
            //                       ),
            //                       Row(
            //                         children: [
            //                           Icon(
            //                             Icons.assignment_turned_in_outlined,
            //                             color: Colors.white,
            //                           ).pOnly(left: 30, right: 30),
            //                           Text("4 large garlic cloves")
            //                               .text
            //                               .white
            //                               .make()
            //                               .p16()
            //                               .box
            //                               .red500
            //                               .make()
            //                               .expand(),
            //                         ],
            //                       ),
            //                       Row(
            //                         children: [
            //                           Icon(
            //                             Icons.assignment_turned_in_outlined,
            //                             color: Colors.white,
            //                           ).pOnly(left: 30, right: 30),
            //                           Text("500 gm Paneer")
            //                               .text
            //                               .white
            //                               .make()
            //                               .p16()
            //                               .box
            //                               .red500
            //                               .make()
            //                               .expand(),
            //                         ],
            //                       ),
            //                     ],
            //                   )
            //                           // ListView.builder(
            //                           //   shrinkWrap: true,
            //                           //     itemCount: 4,
            //                           //     itemBuilder: (context,index){
            //                           //       return Text("Ingredients").text.white.make().p16().box.red500.make();
            //                           //     })
            //                           )
            //                       .red500
            //                       .make()
            //                       .w(context.screenWidth * 0.3)
            //                       .expand(flex: 1),
            //                   VxBox(
            //                           child: ListView(
            //                     shrinkWrap: true,
            //                     children: [
            //                       Row(
            //                         children: [
            //                           Icon(
            //                             Icons.assignment_turned_in_outlined,
            //                             color: Colors.red.shade800,
            //                           ).pOnly(left: 30, right: 30),
            //                           Text("To a pressure cooker add toor dal along with turmeric, 1 teaspoon salt and 3 cups water.")
            //                               .text
            //                               .white
            //                               .make()
            //                               .p8()
            //                               .box
            //                               .black
            //                               .make()
            //                               .opacity75()
            //                               .expand(),
            //                         ],
            //                       ),
            //                       Row(
            //                         children: [
            //                           Icon(
            //                             Icons.assignment_turned_in_outlined,
            //                             color: Colors.red.shade800,
            //                           ).pOnly(left: 30, right: 30),
            //                           Text("Rinse the lentils and add them to a 3 litre pressure cooker. You can also cook the lentils in a pot. Just soak the lentils for an hour or two before you cook them in a pot.")
            //                               .text
            //                               .white
            //                               .make()
            //                               .p8()
            //                               .box
            //                               .black
            //                               .make()
            //                               .opacity75()
            //                               .expand(),
            //                         ],
            //                       ),
            //                       Row(
            //                         children: [
            //                           Icon(
            //                             Icons.assignment_turned_in_outlined,
            //                             color: Colors.red.shade800,
            //                           ).pOnly(left: 30, right: 30),
            //                           Text("Mash the cooked lentils with a wired whisk or with a spoon and keep aside. If the consistency looks thick, then add some water to get a medium consistency. Then simmer for 3 to 4 minutes.")
            //                               .text
            //                               .white
            //                               .make()
            //                               .p8()
            //                               .box
            //                               .black
            //                               .make()
            //                               .opacity75()
            //                               .expand(),
            //                         ],
            //                       ),
            //                       Row(
            //                         children: [
            //                           Icon(
            //                             Icons.assignment_turned_in_outlined,
            //                             color: Colors.red.shade800,
            //                           ).pOnly(left: 30, right: 30),
            //                           Text("To a pressure cooker add toor dal along with turmeric, 1 teaspoon salt and 3 cups water.")
            //                               .text
            //                               .white
            //                               .make()
            //                               .p8()
            //                               .box
            //                               .black
            //                               .make()
            //                               .opacity75()
            //                               .expand(),
            //                         ],
            //                       ),
            //                       Row(
            //                         children: [
            //                           Icon(
            //                             Icons.assignment_turned_in_outlined,
            //                             color: Colors.red.shade800,
            //                           ).pOnly(left: 30, right: 30),
            //                           Text("To a pressure cooker add toor dal along with turmeric, 1 teaspoon salt and 3 cups water.")
            //                               .text
            //                               .white
            //                               .make()
            //                               .p8()
            //                               .box
            //                               .black
            //                               .make()
            //                               .opacity75()
            //                               .expand(),
            //                         ],
            //                       ),
            //                     ],
            //                   )
            //                           // ListView.builder(
            //                           //     shrinkWrap: true,
            //                           //     itemCount: 20,
            //                           //     itemBuilder: (context,index){
            //                           //       return Text("Ingredients").text.white.make().p4().box.gray800.make();
            //                           //     })
            //                           )
            //                       .black
            //                       .make()
            //                       .opacity(value: 90)
            //                       .w(context.screenWidth * 0.3)
            //                       .expand(flex: 3),
            //                 ],
            //               ),
            //               20.heightBox,
            //               // WeekRecipe().h(context.screenHeight * 0.4)
            //             ],
            //           ).p16(),
            //         ],
            //       ),
            //     ).width(context.screenWidth).make())
          ],
        ).scrollVertical());
  }
}
