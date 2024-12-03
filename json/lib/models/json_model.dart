class JsonModel {
  String? name;
  String? major;
  List<String>? subject;
  List<Post>? post;

  JsonModel({this.name, this.major, this.subject, this.post});

  // Factory constructor for creating an instance from a Map
  factory JsonModel.fromMap(Map<String, dynamic> data) {
    return JsonModel(
      name: data['name'],
      major: data['marjor'], // Match your JSON key
      subject: List<String>.from(data['subject']), // Map subject list
      post: data['post'] != null
          ? data['post'].map<Post>((e) => Post.fromMap(e)).toList()
          : [],
    );
  }
}

class Post {
  String? name;

  Post({this.name});

  // Factory constructor for creating an instance from a Map
  factory Post.fromMap(Map<String, dynamic> data) {
    return Post(name: data['name']);
  }
}
