class CardModel {
  int userId = 0;
  int id = 0;
  String title = '';
  bool completed = false;

  CardModel({this.userId = 0, this.id = 0, this.title = '', this.completed = false});

  CardModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }
}