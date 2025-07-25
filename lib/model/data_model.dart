import 'package:e_commerce/model/items_constants.dart';

class DataModel {
  String itemName;
  int itemPrice;
  String itemCategory;
  String itemImage;
  double? itemPoint;
  int itemSeller;
  Map<ItemSuppliers, int> suppliersPrices;
  List<String> itemSourceSite;
  List<String> suppliers;

  DataModel({
    required this.itemName,
    required this.itemCategory,
    required this.itemPrice,
    required this.itemImage,
    required this.itemSourceSite,
    this.itemPoint,
    this.itemSeller = 0,
    required this.suppliers,
    required this.suppliersPrices,
  });
}
