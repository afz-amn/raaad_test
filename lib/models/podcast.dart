class Podcast {
  int id;
  String imageUrl;
  String artistName;
  String musicName;
  String url;
  bool isLiked;
  int length;

  Podcast(this.artistName, this.id, this.imageUrl, this.musicName,this.url,
      {this.isLiked = false, this.length = 0});

  static Podcast fromJson(Map<String, dynamic> json) {

    return Podcast(
      json['artistName'],
      json['id'],
      json['imageUrl'],
      json['musicName'],
      json['url'],
      isLiked: json['isLiked'],
      length: json['length'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imageUrl'] = this.imageUrl;
    data['artistName'] = this.artistName;
    data['musicName'] = this.musicName;
    data['url'] = this.url;
    data['isLiked'] = this.isLiked;
    data['length'] = this.length;
    return data;
  }
}
