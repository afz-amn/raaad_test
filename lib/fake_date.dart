import 'package:radio/models/gallery.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';

import 'models/contact_us_model.dart';
import 'models/podcast.dart';
import 'models/youtube_item.dart';

List<Podcast> podcastList() {
  List<Podcast>? podcasts = [];

  podcasts.add(Podcast(
      "Halo Theme Song ", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(
      Podcast("Shatter Me", 0, "imageUrl", "Lindsey Stirling . second song"));
  podcasts.add(Podcast(
      "Beautiful Times", 0, "imageUrl", "Lindsey Stirling . third song"));
  podcasts.add(
      Podcast("Brave Enough", 0, "imageUrl", "Lindsey Stirling . fourth song"));
  podcasts.add(
      Podcast("Papaoutai", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast(
      "Somrthing Wild", 0, "imageUrl", "Lindsey Stirling . third song"));
  podcasts.add(
      Podcast("Lost Girls", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(
      Podcast("Dying for you", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast(
      "Spring without you", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast(
      "River Flows In You", 0, "imageUrl", "Lindsey Stirling . fourth song"));
  podcasts.add(
      Podcast("You and me", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(
      Podcast("My lovely days", 0, "imageUrl", "Lindsey Stirling . last song"));
  podcasts
      .add(Podcast("Artemis", 0, "imageUrl", "Lindsey Stirling . last song"));
  podcasts.add(
      Podcast("Gavi's Song", 0, "imageUrl", "Lindsey Stirling . eighth song"));
  podcasts.add(Podcast(
      "Warmer in the Winter", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(
      Podcast("Hold My Heart", 0, "imageUrl", "Lindsey Stirling . last song"));

  return podcasts;
}




List<Gallery> galleyList() {
  List<Gallery> galleries = [];
  galleries.add(Gallery(0, "assets/Radio8.jpg", "Radio Tiam _ Audiogate ", "subtitle", DateTime.now()));
  galleries.add(Gallery(1, "assets/PhotoHoghogheBashar.jpg", "Das erste Treffen im Radio Orange Studio", "subtitle", DateTime.now()));
  galleries.add(Gallery(2, "assets/firstPhoto.jpg", " Die erste Aufführung von Sahar im Radio ", "subtitle", DateTime.now()));
  galleries.add(Gallery(3, "assets/Radio3.jpg", "Die erste Sitzung zum Verhältnis von Kultur und Geschichte", "subtitle", DateTime.now()));
  galleries.add(Gallery(4, "assets/photoGallery.jpg", "Die zweite Sitzung mit Armin über Traditional Musik", "subtitle", DateTime.now()));
  galleries.add(Gallery(5, "assets/Radio1.jpg", "Die zweite Sitzung zum Verhältnis von Kultur und Geschichte", "subtitle", DateTime.now()));
  galleries.add(Gallery(6, "assets/Radio2.jpg", "Das erste Treffen mit Herr. Wikler ", "subtitle", DateTime.now()));
  galleries.add(Gallery(7, "assets/Radio3.jpg", "Das erste Interview mit Babak ", "subtitle", DateTime.now()));
  galleries.add(Gallery(8, "assets/Radio4.jpg", "Das erste Treffen mit Herr. Kasra ", "subtitle", DateTime.now()));
  galleries.add(Gallery(9, "assets/Radio6.JPG", "Die erste Neujahrsvorstellung mit Sahar", "subtitle", DateTime.now()));
  galleries.add(Gallery(10, "assets/Radio7.JPG", "Live-Radioprogramm im Radio Orange Studio ", "subtitle", DateTime.now()));



  return galleries;
}

List<ContactUsModel> ContactUsModelList() {
  List<ContactUsModel> contactUs = [];

  contactUs.add(ContactUsModel(0, "assets/PhotoHoghogheBashar.jpg", "title", "subtitle", ));
  contactUs.add(ContactUsModel(1, "assets/firstPhoto.jpg", "title", "subtitle",));
  contactUs.add(ContactUsModel(2, "assets/PhotoHoghogheBashar.jpg", "title", "subtitle", ));
  contactUs.add(ContactUsModel(3, "assets/photoGallery.jpg", "title", "subtitle",));
  contactUs.add(ContactUsModel(4, "assets/PhotoHoghogheBashar.jpg", "title", "subtitle", ));
  contactUs.add(ContactUsModel(5, "assets/PhotoHoghogheBashar.jpg", "title", "subtitle", ));
  contactUs.add(ContactUsModel(6, "assets/PhotoHoghogheBashar.jpg", "title", "subtitle", ));
  contactUs.add(ContactUsModel(7, "assets/firstPhoto.jpg", "title", "subtitle", ));

  return contactUs;
}

List<YoutubeChannel> youtubeChannelList(){
  List<YoutubeChannel>? youtubeChannels = [];

  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));
  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));
  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));
  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));
  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));

  return youtubeChannels;
}
