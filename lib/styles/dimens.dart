import 'package:flutter/material.dart';

 double fullWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double fullHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double standardSize(BuildContext context) {
//    return 16;

  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 35;
  } else
    return MediaQuery.of(context).size.width / 25;
}

double largeSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 31;
  } else
    return MediaQuery.of(context).size.width / 21;
}

double xlargeSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 26;
  }
  return MediaQuery.of(context).size.width / 16;
}

double xxlargeSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 20;
  }
  return MediaQuery.of(context).size.width / 10;
}

double mediumSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 38;
  }
  return MediaQuery.of(context).size.width / 28;
}

double smallSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 70;
  } else
    return MediaQuery.of(context).size.width / 35;
}

double xSmallSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 73;
  } else
    return MediaQuery.of(context).size.width / 50;
}

double xxSmallSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 73;
  } else
    return MediaQuery.of(context).size.width / 66;
}


double iconSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 31;
  } else
    return MediaQuery.of(context).size.width / 21;
}

double iconSizeLarge(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 28;
  } else
    return MediaQuery.of(context).size.width / 18;
}

double iconSizeXLarge(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 24;
  } else
    return MediaQuery.of(context).size.width / 14;
}
