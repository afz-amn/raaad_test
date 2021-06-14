import 'package:radio/models/gallery.dart';
import 'package:radio/models/youtube_item.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:radio/styles/assets.dart';

import 'models/contact_us_model.dart';
import 'models/podcast.dart';

List<Podcast> podcastList() {
  List<Podcast>? podcasts = [];

  podcasts.add(Podcast("Sahar and Reza Vatan", 0, podcast,
      "The importance of women in the history Iranian literature","https://dls.musicmedia.ir/ahang/Violin%20Romances_Schumann%20[%20musicmedia.ir%20].mp3"));
  podcasts.add(Podcast(
      "Mr. Hedayat Tanian", 1, podcast, "Theater and acting in theater","https://dls.musicmedia.ir/ahang/Violin%20Morceaux_Boccherini%20[%20musicmedia.ir%20].mp3"));
  podcasts.add(Podcast("Mr. Mohammad Drougar", 2, podcast,
      "Tehran's historical heritage and it's sufferings","https://dls.musicmedia.ir/ahang/Violin%20Les%20millions%20DArlequin%20Serenade%20Drigo%20[%20musicmedia.ir%20].mp3"));
  podcasts.add(Podcast(
      "Mrs. Gita Davoodi", 3, podcast, "Conscious use of mental abilities","https://dls.musicmedia.ir/ahang/Espana_Isaac%20Albeniz%20[%20musicmedia.ir%20].mp3"));
  podcasts.add(Podcast("Mrs. Gita Davoodi", 4, podcast,
      "How to consciously use our mental abilities?","https://dls.musicmedia.ir/ahang/Traumerei_Frantisek%20Alois%20Drdla%20[%20musicmedia.ir%20].mp3"));
  podcasts.add(Podcast(
      "Mr. Armin Ghorbani", 5, podcast, "Books and music with management","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts.add(Podcast(
      "Mr. Hedayat Tanian", 6, podcast, "Theater and acting in theater","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts.add(Podcast("Mr. Karen Niaz", 7, podcast,
      "The importance of preserving national culture and identity","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts.add(Podcast("Sahar and Reza Vatan", 8, podcast,
      "Review current events and introduce some books","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts
      .add(Podcast("Reza Vatan", 9, podcast, "The power of art in society","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts
      .add(Podcast("Katy Niknam", 10, podcast, "Folk music of southern Iran","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts.add(Podcast("Sahar and Reza Vatan", 11, podcast,
      "Human Rights in Iran with the guests of the program","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts.add(Podcast("Daniel Saket", 12, podcast,
      "Global national solidarity and integration","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts.add(Podcast(
      "Saman Haghighi", 13, podcast, "The impact of music on human life","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts.add(Podcast(
      "Mag.Nina Elahi", 14, podcast, "A review of recent development in Art","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));
  podcasts.add(Podcast("Mr. Kiani and Sahar", 15, podcast,
      "The art of mystical dance in Iranian culture","https://dls.musicmedia.ir/ahang/Ahang%20Santour%20[%20musicmedia.ir%20]%20320.mp3"));

  return podcasts;
}

List<Gallery> galleyList() {
  List<Gallery> galleries = [];
  galleries.add(Gallery(
    0,
    "assets/Radio8.jpg",
    "Radio Tiam _ Audiogate ",
    "subtitle"
  ));
  galleries.add(Gallery(
    1,
    "assets/PhotoHoghogheBashar.jpg",
    "The first meeting at Radio Orange Studio",
    "subtitle",
  ));
  galleries.add(Gallery(
    2,
    "assets/firstPhoto.jpg",
    "The first performance of Sahar on the radio",
    "subtitle",
  ));
  galleries.add(Gallery(
    3,
    "assets/Radio3.jpg",
    "The first meeting on the relationship between culture and history",
    "subtitle",
  ));
  galleries.add(Gallery(
    4,
    "assets/photoGallery.jpg",
    "The second meeting with Armin about traditional music",
    "subtitle",
  ));
  galleries.add(Gallery(
    5,
    "assets/Radio1.jpg",
    "The second meeting on the relationship between culture and history",
    "subtitle",
  ));
  galleries.add(Gallery(
    6,
    "assets/Radio2.jpg",
    "The first meeting with mr. Wikler",
    "subtitle",
  ));
  galleries.add(Gallery(
    7,
    "assets/Radio3.jpg",
    "The first interview with Babak",
    "subtitle",
  ));
  galleries.add(Gallery(
    8,
    "assets/Radio4.jpg",
    "The first meeting with mr. Kasra",
    "subtitle",
  ));
  galleries.add(Gallery(
    9,
    "assets/Radio6.JPG",
    "The first New Year's performance with Sahar",
    "subtitle",
  ));
  galleries.add(Gallery(
    10,
    "assets/Radio7.JPG",
    "Live radio program in Radio Orange Studio",
    "subtitle",
  ));

  return galleries;
}

List<ContactUsModel> ContactUsModelList() {
  List<ContactUsModel> contactUs = [];

  contactUs.add(ContactUsModel(
    0,
    "assets/PhotoHoghogheBashar.jpg",
    "title",
    "subtitle",
  ));
  contactUs.add(ContactUsModel(
    1,
    "assets/firstPhoto.jpg",
    "title",
    "subtitle",
  ));
  contactUs.add(ContactUsModel(
    2,
    "assets/PhotoHoghogheBashar.jpg",
    "title",
    "subtitle",
  ));
  contactUs.add(ContactUsModel(
    3,
    "assets/photoGallery.jpg",
    "title",
    "subtitle",
  ));
  contactUs.add(ContactUsModel(
    4,
    "assets/PhotoHoghogheBashar.jpg",
    "title",
    "subtitle",
  ));
  contactUs.add(ContactUsModel(
    5,
    "assets/PhotoHoghogheBashar.jpg",
    "title",
    "subtitle",
  ));
  contactUs.add(ContactUsModel(
    6,
    "assets/PhotoHoghogheBashar.jpg",
    "title",
    "subtitle",
  ));
  contactUs.add(ContactUsModel(
    7,
    "assets/firstPhoto.jpg",
    "title",
    "subtitle",
  ));

  return contactUs;
}

List<YoutubeItem> youtubeChannelList() {
  List<YoutubeItem>? youtubeChannels = [];

  youtubeChannels.add(YoutubeItem("Iranian Kunst", 0, ArtOfIran,
      "Ein Blick auf die Traditionelle Iranische Kunst"));
  youtubeChannels.add(
      YoutubeItem("Iranian Carpet", 1, Carpet, "Nafir in Tehran, Iran"));
  youtubeChannels.add(YoutubeItem(
      "Iranian Literature", 2, Literature, "Persian Art and Literature"));
  youtubeChannels.add(YoutubeItem(
      "persian Tiles", 3, Stock, "Iranian decorative ceramic tiles"));
  youtubeChannels.add(YoutubeItem(
      "Traditional music", 4, music, "Traditional and Folklore music of Iran"));
  youtubeChannels.add(YoutubeItem(
      "Shiraz Art", 5, Shiraz, "Critique of Shiraz antiquities"));
  youtubeChannels.add(YoutubeItem(
      "iranian miniature", 6, miniature, "Let's talk about miniature"));
  youtubeChannels.add(YoutubeItem("Ancient Iran Paintings", 7,
      AncientIrnPainting, "Critique of Iranian traditional art"));
  youtubeChannels.add(YoutubeItem("Nature of Iran", 8, Nature,
      "Let's talk about nature and mountains of Iran"));
  youtubeChannels.add(YoutubeItem(
      "Travel", 9, travel, "Let's talk about travel, a new experience"));
  youtubeChannels.add(YoutubeItem(
      "Shahnameh Ferdowsi", 10, shahnameh, "Great Iranian Poet, Shahnameh"));

  return youtubeChannels;
}
