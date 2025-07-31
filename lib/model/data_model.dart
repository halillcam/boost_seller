import 'package:boost_seller/model/items_constants.dart';

class DataModel {
  String itemName;
  int itemPrice;
  String itemCategory;
  String itemImage;
  double itemRating;
  int itemSoldCount;
  Map<ItemSuppliers, int> suppliersPrices;
  List<String> itemSourceSite;
  List<String> suppliers;

  DataModel({
    required this.itemName,
    required this.itemCategory,
    required this.itemPrice,
    required this.itemImage,
    required this.itemSourceSite,
    required this.itemRating,
    required this.itemSoldCount,
    required this.suppliers,
    required this.suppliersPrices,
  });
}
