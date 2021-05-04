import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class Content2 extends StatefulWidget {
  @override
  _Content2State createState() => _Content2State();
}

class _Content2State extends State<Content2> {
  @override
  Widget build(BuildContext context) {
    return Container(
     // height: context.isMobile?context.screenHeight*0.6:context.screenHeight*0.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context,index){
            return Card(
              child: VxBox(
                child: Stack(
                  children: [
                    Image.network("https://image.freepik.com/free-photo/indian-dhal-spicy-curry-bowl_2829-3302.jpg",height:300,width:context.screenWidth,fit: BoxFit.cover,),
                    Text("Name of Recipe").text.bold.make().p4().box.red500.roundedLg.make().opacity75(),
                  ],
                )

              ).width(context.isMobile?context.screenWidth:context.screenWidth*0.2).height(context.isMobile?300:200).make(),
            ).p4();
          }),
    );
  }
}
