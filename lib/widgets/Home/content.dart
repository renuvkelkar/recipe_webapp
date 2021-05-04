import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return VxDevice(mobile: Container(
      width: context.screenWidth,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          VxBox(
              child: Text("Indian cuisine is also influenced by many other countries. It is known for its large assortment of dishes and its liberal use of herbs and spices. Cooking styles vary from region to region. Wheat, Basmati rice and pulses with chana (Bengal gram) are important staples of the Indian diet.").text.xl2.white.make().p16()
          ).red500.make().w(context.screenWidth).h(context.percentHeight*40),
          20.heightBox,
          VxBox(
            child: Stack(
              children: [
                Image.network("https://image.freepik.com/free-photo/beautiful-tasty-appetizing-ingredients-spices-red-chilli-pepper-grocery-cooking-healthy-kitchen_1220-1676.jpg"
                  , width: context.screenWidth,height: context.percentHeight*40,fit: BoxFit.cover,
                ),
                VxBox(

                ).red500.height(200).width(context.screenWidth).make().opacity50(),
                "Stories of Indian Spices".text.white.xl3.semiBold.makeCentered().p16()
              ],
            ),
          ).make().p4(),
          20.heightBox,
          VxBox(
            child: Stack(
              children: [
                Image.network("https://image.freepik.com/free-photo/masala_78502-12.jpg"
                  , width: context.screenWidth,height: context.percentHeight*40,fit: BoxFit.cover,
                ),
                VxBox(
                ).red500.height(200).width(context.screenWidth).make().opacity50(),
                "Stories of Indian Kitchens".text.white.xl3.semiBold.makeCentered().p16()
              ],
            ),
          ).make().p4(),
        ],
      ).pOnly(top: 30,bottom: 100),
    ),
        web: Container(


          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
            VxBox(
              child: Text("Indian cuisine is also influenced by many other countries. It is known for its large assortment of dishes and its liberal use of herbs and spices. Cooking styles vary from region to region. Wheat, Basmati rice and pulses with chana (Bengal gram) are important staples of the Indian diet.").text.xl2.white.make().p16()
            ).red500.make().w(context.screenWidth*0.3).h(context.percentHeight*40),
              Stack(
               children: [
                 Image.network("https://image.freepik.com/free-photo/beautiful-tasty-appetizing-ingredients-spices-red-chilli-pepper-grocery-cooking-healthy-kitchen_1220-1676.jpg"
                   , width: context.screenWidth*0.3,height: context.percentHeight*40,fit: BoxFit.cover,
                 ),
                 VxBox(
                 ).red500.height(200).width(context.screenWidth*0.3).make().opacity50(),
                 "Stories of Indian Spices".text.white.xl3.semiBold.makeCentered().p16()
               ],
              ),
              Stack(
                children: [
                  Image.network("https://image.freepik.com/free-photo/masala_78502-12.jpg"
                    , width: context.screenWidth*0.3,height: context.percentHeight*40,fit: BoxFit.cover,
                  ),
                  VxBox().red500.height(200).width(context.screenWidth*0.3).make().opacity50(),
                  "Stories of Indian Kitchens".text.white.xl3.semiBold.makeCentered().p16()
                ],
              ),
            ],
          ).pOnly(top: 30,bottom: 100),
        ));
  }
}
