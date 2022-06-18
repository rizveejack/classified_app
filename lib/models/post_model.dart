// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

List<PostModel> postModelFromJson(String str) =>
    List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String postModelToJson(List<PostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostModel {
  PostModel({
    this.id,
    required this.image,
    required this.title,
    required this.verified,
    required this.location,
    this.date,
  });

  int? id;
  String image;
  String title;
  bool verified;
  String location;
  String? date;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        verified: json["verified"],
        location: json["location"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "verified": verified,
        "location": location,
        "date": date,
      };
}
