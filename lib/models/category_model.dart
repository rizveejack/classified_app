class CategoryModel {
  int? id;
  String? title;
  String? image;

  CategoryModel({
    required this.id,
    required this.image,
    required this.title,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    image = json["image"];
  }
}
