import 'package:boost_seller/utilities/project_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProjectTextstyles {
  //itemViews page
  static TextStyle titleTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  static TextStyle itemNameTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 13,
    color: ProjectColors.itemNameColor,
  );
  static TextStyle itemPriceTextStyle = TextStyle(
    color: ProjectColors.itemPriceColor,
    fontSize: 13,
  );
  static TextStyle appbarTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static TextStyle itemSoldTextStyle = TextStyle(
    fontSize: 12,
    fontStyle: FontStyle.italic,
    color: ProjectColors.itemSoldColor,
  );

  static TextStyle itemRatingTextStyle = TextStyle(fontSize: 13, fontWeight: FontWeight.w400);

  // itemDetails page

  static TextStyle detailPageTextStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle listTileTextStyle = TextStyle(fontWeight: FontWeight.bold);
}
