class PostModel {
  int? id;
  String? title;
  String? image;
  String? location;
  String? date;
  bool? verified;

  PostModel({
    this.id,
    this.title,
    this.image,
    this.location,
    this.date,
    this.verified,
  });

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    location = json['location'];
    date = json['date'];
    verified = json['verified'];
  }
}
