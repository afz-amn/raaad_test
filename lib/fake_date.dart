import 'package:radio/models/gallery.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:radio/styles/assets.dart';

import 'models/contact_us_model.dart';
import 'models/podcast.dart';
import 'models/youtube_item.dart';

List<Podcast> podcastList() {
  List<Podcast>? podcasts = [];

  podcasts.add(Podcast(
      "Sahar and Reza Vatan", 0, podcast , "The importance of women in the history Iranian literature"));
  podcasts.add(Podcast(
      "Mr. Hedayat Tanian", 1, podcast, "Theater and acting in theater"));
  podcasts.add(Podcast(
      "Mr. Mohammad Drougar", 2, podcast, "Tehran's historical heritage and it's sufferings"));
  podcasts.add(Podcast(
      "Mrs. Gita Davoodi", 3, podcast, "Conscious use of mental abilities"));
  podcasts.add(Podcast(
      "Mrs. Gita Davoodi", 4, podcast, "How to consciously use our mental abilities?"));
  podcasts.add(Podcast(
      "Mr. Armin Ghorbani", 5, podcast, "Books and music with management"));
  podcasts.add(Podcast(
      "Mr. Hedayat Tanian", 6, podcast, "Theater and acting in theater"));
  podcasts.add(Podcast(
      "Mr. Karen Niaz", 7, podcast, "The importance of preserving national culture and identity"));
  podcasts.add(Podcast(
      "Sahar and Reza Vatan", 8, podcast, "Review current events and introduce some books"));
  podcasts.add(Podcast(
      "Reza Vatan", 9, podcast, "The power of art in society"));
  podcasts.add(Podcast(
      "Katy Niknam", 10, podcast, "Folk music of southern Iran"));
  podcasts.add(Podcast(
      "Sahar and Reza Vatan", 11, podcast, "Human Rights in Iran with the guests of the program"));
  podcasts.add(Podcast(
      "Daniel Saket", 12, podcast, "Global national solidarity and integration"));
  podcasts.add(Podcast(
      "Saman Haghighi", 13, podcast, "The impact of music on human life"));
  podcasts.add(Podcast(
      "Mag.Nina Elahi", 14, podcast, "A review of recent development in Art "));
  podcasts.add(Podcast(
      "Mr. Kiani and Sahar", 15, podcast, "The art of mystical dance in Iranian culture"));

  return podcasts;
}




List<Gallery> galleyList() {
  List<Gallery> galleries = [];
  galleries.add(Gallery(0, "assets/Radio8.jpg", "Radio Tiam _ Audiogate ", "subtitle", DateTime.now()));
  galleries.add(Gallery(1, "assets/PhotoHoghogheBashar.jpg", "The first meeting at Radio Orange Studio", "subtitle", DateTime.now()));
  galleries.add(Gallery(2, "assets/firstPhoto.jpg", "The first performance of Sahar on the radio", "subtitle", DateTime.now()));
  galleries.add(Gallery(3, "assets/Radio3.jpg", "The first meeting on the relationship between culture and history", "subtitle", DateTime.now()));
  galleries.add(Gallery(4, "assets/photoGallery.jpg", "The second meeting with Armin about traditional music", "subtitle", DateTime.now()));
  galleries.add(Gallery(5, "assets/Radio1.jpg", "The second meeting on the relationship between culture and history", "subtitle", DateTime.now()));
  galleries.add(Gallery(6, "assets/Radio2.jpg", "The first meeting with mr. Wikler", "subtitle", DateTime.now()));
  galleries.add(Gallery(7, "assets/Radio3.jpg", "The first interview with Babak", "subtitle", DateTime.now()));
  galleries.add(Gallery(8, "assets/Radio4.jpg", "The first meeting with mr. Kasra", "subtitle", DateTime.now()));
  galleries.add(Gallery(9, "assets/Radio6.JPG", "The first New Year's performance with Sahar", "subtitle", DateTime.now()));
  galleries.add(Gallery(10, "assets/Radio7.JPG", "Live radio program in Radio Orange Studio", "subtitle", DateTime.now()));

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

  youtubeChannels.add(YoutubeChannel("Iranian Kunst", 0, ArtOfIran, "Ein Blick auf die Traditionelle Iranische Kunst"));
  youtubeChannels.add(YoutubeChannel("Iranian Carpet", 1, Carpet, "Nafir in Tehran, Iran"));
  youtubeChannels.add(YoutubeChannel("Iranian Literature", 2, Literature, "Persian Art and Literature"));
  youtubeChannels.add(YoutubeChannel("persian Tiles", 3, Stock, "Iranian decorative ceramic tiles"));
  youtubeChannels.add(YoutubeChannel("Traditional music", 4, music, "Traditional and Folklore music of Iran"));
  youtubeChannels.add(YoutubeChannel("Shiraz Art", 5, Shiraz, "Critique of Shiraz antiquities"));
  youtubeChannels.add(YoutubeChannel("iranian miniature", 6, miniature, "Let's talk about miniature"));
  youtubeChannels.add(YoutubeChannel("Ancient Iran Paintings", 7, AncientIrnPainting, "Critique of Iranian traditional art"));
  youtubeChannels.add(YoutubeChannel("Nature of Iran", 8, Nature, "Let's talk about nature and mountains of Iran"));
  youtubeChannels.add(YoutubeChannel("Travel", 9, travel, "Let's talk about travel, a new experience"));
  youtubeChannels.add(YoutubeChannel("Shahnameh Ferdowsi",10, shahnameh, "Great Iranian Poet, Shahnameh"));


  return youtubeChannels;
}
