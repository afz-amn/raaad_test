class Podcast {
  int id;
  String imageUrl;
  String artistName;
  String musicName;
  bool isLiked;
  int length;

  Podcast(this.artistName, this.id, this.imageUrl, this.musicName,
      {this.isLiked = false, this.length = 0});
}
