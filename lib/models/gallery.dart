class Gallery {
  int id;
  String imagePath;
  String title;
  String subTitle;

  Gallery(this.id, this.imagePath, this.title, this.subTitle);

  Gallery fromJson(Map<String, dynamic> json) {
    return Gallery(
      json['id'],
      json['imagePath'],
      json['title'],
      json['subTitle'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imagePath'] = this.imagePath;
    data['title'] = this.title;
    data['subTitle'] = this.subTitle;
    return data;
  }
}
