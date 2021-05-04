import 'package:flutter/material.dart';
import 'package:recipe_webapp/models/recipe_model.dart';
import 'package:velocity_x/velocity_x.dart';
class Ingredient extends StatefulWidget {
  final List recipeIngredients;


  const Ingredient(this.recipeIngredients) ;
  _IngredientState createState() => _IngredientState();
}

class _IngredientState extends State<Ingredient> {
  @override
  Widget build(BuildContext context) {
    return
    ListView.builder(
        shrinkWrap: true,
        itemCount: widget.recipeIngredients.length,
        itemBuilder: (context,index){
          return  Row(
            children: [
              Icon(
                Icons.assignment_turned_in_outlined,
                color: Colors.white,
              ).pOnly(left: 30, right: 30),
              Text(widget.recipeIngredients[index].toString())
                  .text
                  .white
                  .make()
                  .p16()
                  .box
                  .red500
                  .make(),
            ],
          );
        });

  }
}
