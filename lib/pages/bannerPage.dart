import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class BannerPage extends StatefulWidget {
  @override
  _BannerPageState createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> with SingleTickerProviderStateMixin {
  AnimationController _controller; @override
  void initState() {
    super.initState();
    _controller =
    AnimationController(duration: Duration(seconds: 15), vsync: this)
      ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return VxDevice(
      web: Stack(
        children: [
          VxBox(child: Image.asset("assets/images/black.jpg",fit: BoxFit.cover,)).width(context.screenWidth).make(),
          RotationTransition(
            alignment: Alignment.center,
            turns: _controller,
            child: VxBox(
                child: Image.asset("assets/images/paneer.png",height: context.screenHeight*0.5,width: context.screenWidth*0.3,fit: BoxFit.cover,)
            ).make().pOnly(left: 30),
          ),
          VxBox(
            child: Text("let's explore pure indian tasty  Home Food Recipe  ").text.xl5.lineHeight(1.2).white.makeCentered().p16()
          ).height(120).width(500).red500.roundedSM.makeCentered().opacity75().pOnly(top: 5,left: 200),

        ],
      ),
      mobile: Stack(
        children: [
          VxBox(child: Image.asset("assets/images/black.jpg",fit: BoxFit.cover,)).width(context.screenWidth).make(),
          RotationTransition(
            alignment: Alignment.center,
            turns: _controller,
            child: VxBox(
                child: Image.asset("assets/images/paneer.png",height: context.screenHeight*0.5,width: context.screenWidth,fit: BoxFit.cover,)
            ).make(),
          ),
          VxBox(
              child: Text("let's explore pure indian taste from Home Food Recipe  ").text.xl5.lineHeight(1.2).white.makeCentered().p16()
          ).height(120).width(500).red500.roundedSM.makeCentered().opacity75().pOnly(top: 5,left: 10),
        ],
      ),
      
    );
  }
}

