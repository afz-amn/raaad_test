class Podcast {
  int id;
  String imageUrl;
  String artistName;
  String musicName;
  bool isLiked;
  int length;

  Podcast(this.artistName, this.id, this.imageUrl, this.musicName,
      {this.isLiked = false, this.length = 0});

  Podcast fromJson(Map<String, dynamic> json){
    return Podcast(
      json['id'],
      json['imageUrl'],
      json['artistName'],
      json['musicName'],
      json['isLiked'],
      json['length'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imageUrl'] = this.imageUrl;
    data['artistName'] = this.artistName;
    data['musicName'] = this.musicName;
    data['isLiked'] = this.isLiked;
    data['length'] = this.length;
    return data;
  }

}
