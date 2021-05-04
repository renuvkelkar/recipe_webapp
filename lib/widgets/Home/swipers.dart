import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";
class SwiperBlock extends StatefulWidget {
  @override
  _SwiperBlockState createState() => _SwiperBlockState();
}

class _SwiperBlockState extends State<SwiperBlock> {
  @override
  Widget build(BuildContext context) {
    return VxBox(

        child: VxSwiper(
          scrollDirection: Axis.horizontal,
          items: [
            Image.network("https://image.freepik.com/free-photo/flat-lay-food-ingredients-with-vegetables_23-2148834702.jpg",width:context.screenWidth,
              fit: BoxFit.cover,
            ),
            Image.network("https://image.freepik.com/free-photo/arrangement-delicious-food-ingredients_23-2148869888.jpg",
              width:context.screenWidth,height: context.isMobile?300:100,fit: BoxFit.cover,
            ),
            Image.network("https://image.freepik.com/free-photo/top-view-assortment-tasty-food_23-2148869961.jpg",
              width:context.screenWidth,height: context.isMobile?300:100,fit: BoxFit.cover,
            )

          ],
          viewportFraction: 1.0,
          autoPlay: true,

          autoPlayAnimationDuration: 2.seconds,
        )
    ).red100.height(context.isMobile?300:400).width(context.screenWidth).make();
  }
}
