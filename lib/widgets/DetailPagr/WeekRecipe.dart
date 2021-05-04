import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class WeekRecipe extends StatefulWidget {
  @override
  _WeekRecipeState createState() => _WeekRecipeState();
}

class _WeekRecipeState extends State<WeekRecipe> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          // VxBox(
          //   child: Stack(
          //     children: [
          //       Image.network("https://image.freepik.com/free-photo/indian-traditional-patisserie-with-sauce_23-2148295020.jpg",fit: BoxFit.cover,),
          //       Text("Samosa Chaat").text.xl.white.semiBold.makeCentered().box.red500.width(context.screenWidth).height(context.screenHeight*0.12).alignBottomCenter.make().opacity75()
          //
          //     ],
          //   )
          // ).make().p8(),
          VxBox(
              child: Column(
                children: [
                  Image.network("https://image.freepik.com/free-photo/rice-corn-green-peas-indian-cuisine_23-2148294960.jpg",height: context.screenHeight*0.25,width:context.screenWidth*0.8,fit: BoxFit.cover,),
                  Text("Yellow Rice").text.xl.white.semiBold.makeCentered()
                ],
              )
          ).red500.width(context.isMobile?context.screenWidth*0.8:context.screenWidth*0.2).height(context.screenHeight*0.4).make().p8(),
          VxBox(
              child: Column(
                children: [
                  Image.network("https://image.freepik.com/free-photo/indian-traditional-patisserie-with-sauce_23-2148295020.jpg",height: context.screenHeight*0.25,width:context.screenWidth*0.8,fit: BoxFit.cover,),
                  Text("Samosa Chaat").text.xl.white.semiBold.makeCentered()
                ],
              )
          ).red500.width(context.isMobile?context.screenWidth*0.8:context.screenWidth*0.2).height(context.screenHeight*0.4).make().p8(),
          VxBox(
              child: Column(
                children: [
                  Image.network("https://image.freepik.com/free-photo/indian-chicken-curry-balti-dish_250927-639.jpg",height: context.screenHeight*0.25,width:context.screenWidth*0.8,fit: BoxFit.cover,),
                  Text("Chicken curry").text.xl.white.semiBold.makeCentered()
                ],
              )
          ).red500.width(context.isMobile?context.screenWidth*0.8:context.screenWidth*0.2).height(context.screenHeight*0.4).make().p8(),
          VxBox(
              child: Column(
                children: [
                  Image.network("https://image.freepik.com/free-photo/rice-corn-green-peas-indian-cuisine_23-2148294960.jpg",height: context.screenHeight*0.25,width:context.screenWidth*0.8,fit: BoxFit.cover,),
                  Text("Yellow Rice").text.xl.white.semiBold.makeCentered()
                ],
              )
          ).red500.width(context.isMobile?context.screenWidth*0.8:context.screenWidth*0.2).height(context.screenHeight*0.4).make().p8(),
          VxBox(
              child: Column(
                children: [
                  Image.network("https://image.freepik.com/free-photo/indian-traditional-patisserie-with-sauce_23-2148295020.jpg",height: context.screenHeight*0.25,width:context.screenWidth*0.8,fit: BoxFit.cover,),
                  Text("Samosa Chaat").text.xl.white.semiBold.makeCentered()
                ],
              )
          ).red500.width(context.isMobile?context.screenWidth*0.8:context.screenWidth*0.2).height(context.screenHeight*0.4).make().p8(),
          VxBox(
              child: Column(
                children: [
                  Image.network("https://image.freepik.com/free-photo/indian-chicken-curry-balti-dish_250927-639.jpg",height: context.screenHeight*0.25,width:context.screenWidth*0.8,fit: BoxFit.cover,),
                  Text("Chicken curry").text.xl.white.semiBold.makeCentered()
                ],
              )
          ).red500.width(context.isMobile?context.screenWidth*0.8:context.screenWidth*0.2).height(context.screenHeight*0.4).make().p8()
        ],
      )
      
    ).make();
  }
}
