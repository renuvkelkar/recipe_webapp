class Category{
  String catName;
  int catId;
  Category({this.catId,this.catName});

  Category.fromJson(Map<String, dynamic> json) {

    catName = json['catName'];
    catId = json['catId'];



  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catName'] = this.catName;
    data['catId'] = this.catId;




  }




}