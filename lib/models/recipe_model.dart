class Recipe{
  int catId;
  String catName;
  String recipeCal;
  int recipeId;
  String recipeImage;
  List recipeIngredients;
  String recipeName;
  String recipeRating;
  String recipeServing;
  List recipeSteps;
  String recipeTime;

  Recipe({this.catName,this.catId,this.recipeCal,this.recipeId,this.recipeImage,this.recipeIngredients,this.recipeName,this.recipeRating,this.recipeServing,this.recipeSteps,this.recipeTime});

  Recipe.fromJson(Map<String, dynamic> json) {

    catName = json['catName'];
    catId = json['catId'];
    recipeCal = json['recipeCal'];
    recipeId = json['recipeId'];
    recipeImage = json['recipeImage'];
    recipeIngredients = json['recipeIngredients'];
    recipeName = json['recipeName'];
    recipeRating = json['recipeRating'];
    recipeServing = json['recipeServing'];
    recipeSteps = json['recipeSteps'];
    recipeTime = json['recipeTime'];


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catName'] = this.catName;
    data['catId'] = this.catId;
    data['recipeCal'] = this.recipeCal;
    data['recipeImage'] = this.recipeImage;
    data['recipeIngredients'] = this.recipeIngredients;
    data['recipeName'] = this.recipeName;
    data['recipeRating'] = this.recipeRating;
    data['recipeServing'] = this.recipeServing;
    data['recipeSteps'] = this.recipeSteps;
    data['recipeTime'] = this.recipeTime;



  }


}