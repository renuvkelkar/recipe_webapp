import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VxDevice(
        web: Container(
          height: context.screenHeight*0.1,
          color: Colors.black,
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VxBox(
                  child: Image.asset("assets/images/logo.png.")
                ).height(context.screenHeight*0.1).black.width(context.screenWidth*0.2).make().p4(),
                Expanded(
                  child: Row(
                    children: [
                      90.widthBox,
                      "Home".text.gray500.xl.make(),
                      30.widthBox,
                      "About Us".text.red500.xl.make(),
                      30.widthBox,
                      "Contact Us".text.red500.xl.make(),

                    ],
                  )
                ),
               // VxBox().width(200).height(30).gray700.roundedSM.make().px4()
              ],
            ),
          ),
        ),
        mobile: Column(
          children: [

            VxBox(
                child: Image.asset("assets/images/logo.png.")
            ).height(context.screenHeight*0.12).black.width(context.screenWidth*0.3).makeCentered(),

            // VxBox().width(200).height(30).gray700.roundedSM.make().px4()
            
          ],
          
        ).scrollVertical(),
      ),
    );
  }
}
