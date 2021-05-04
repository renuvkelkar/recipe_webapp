import 'package:flutter/material.dart';
import 'package:recipe_webapp/models/recipe_model.dart';
import 'package:velocity_x/velocity_x.dart';
class Instructions extends StatefulWidget {
  final List recipeSteps;

  const Instructions( this.recipeSteps) ;
  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  @override
  Widget build(BuildContext context) {
    return  VxBox(
        child: Stack(
          children: [
            Container(
              child:  ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.recipeSteps.length,
                  itemBuilder: (context,index){
                    return  Row(
                              children: [
                                Icon(
                                  Icons.assignment_turned_in_outlined,
                                  color: Colors.red.shade800,
                                ).pOnly(left: 30, right: 30),
                                Text(widget.recipeSteps[index].toString())
                                    .text
                                    .white
                                    .make()
                                    .p16()
                                    .box
                                    .black
                                    .make()
                                    .opacity75()

                              ],
                            );
                  }),
                // child: ListView(
                //   shrinkWrap: true,
                //   children: [
                //     Row(
                //       children: [
                //         Icon(
                //           Icons.assignment_turned_in_outlined,
                //           color: Colors.red.shade800,
                //         ).pOnly(left: 30, right: 30),
                //         Text("To a pressure cooker add toor dal along with turmeric, 1 teaspoon salt and 3 cups water.")
                //             .text
                //             .white
                //             .make()
                //             .p8()
                //             .box
                //             .black
                //             .make()
                //             .opacity75()
                //             .expand(),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         Icon(
                //           Icons.assignment_turned_in_outlined,
                //           color: Colors.red.shade800,
                //         ).pOnly(left: 30, right: 30),
                //         Text("½ cup chopped onions or 1 medium sized onion")
                //             .text
                //             .white
                //             .make()
                //             .p8()
                //             .box
                //             .black
                //             .make()
                //             .opacity75()
                //             .expand(),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         Icon(
                //           Icons.assignment_turned_in_outlined,
                //           color: Colors.red.shade800,
                //         ).pOnly(left: 30, right: 30),
                //         Text("Rinse the lentils and add them to a 3 litre pressure cooker. You can also cook the lentils in a pot. Just soak the lentils for an hour or two before you cook them in a pot.")
                //             .text
                //             .white
                //             .make()
                //             .p8()
                //             .box
                //             .black
                //             .make()
                //             .opacity75()
                //             .expand(),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         Icon(
                //           Icons.assignment_turned_in_outlined,
                //           color: Colors.red.shade800,
                //         ).pOnly(left: 30, right: 30),
                //         Text("Mash the cooked lentils with a wired whisk or with a spoon and keep aside. If the consistency looks thick, then add some water to get a medium consistency. Then simmer for 3 to 4 minutes.")
                //             .text
                //             .white
                //             .make()
                //             .p8()
                //             .box
                //             .black
                //             .make()
                //             .opacity75()
                //             .expand(),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         Icon(
                //           Icons.assignment_turned_in_outlined,
                //           color: Colors.red.shade800,
                //         ).pOnly(left: 30, right: 30),
                //         Text("To a pressure cooker add toor dal along with turmeric, 1 teaspoon salt and 3 cups water.")
                //             .text
                //             .white
                //             .make()
                //             .p8()
                //             .box
                //             .black
                //             .make()
                //             .opacity75()
                //             .expand(),
                //       ],
                //     ),
                //   ],
                // )

            ),
          ],
        )).black.make().opacity75().w(context.screenWidth);
  }
}
