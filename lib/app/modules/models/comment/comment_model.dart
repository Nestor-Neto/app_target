class CommentModel {
  String? description;
  int? id;

  CommentModel({this.description, this.id});

  // CommentModel.fromJson(Map<String, dynamic> json) {
  //   description = json['description'];
  //   id = json['id'];
  // }
  static CommentModel fromJson(Map<dynamic, dynamic> json) {
    return CommentModel(
      id: int.parse(json['id']),
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['id'] = this.id;
    return data;
  }
}
