class YoutubeItem {
  int id;
  String imageUrl;
  String url;
  String title;

  YoutubeItem(this.url, this.id, this.imageUrl, this.title);

  static YoutubeItem fromJson(Map<String, dynamic> json) {
    return YoutubeItem(
      json['url'],
      json['id'],
      json['imageUrl'],
      json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imageUrl'] = this.imageUrl;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }

}
