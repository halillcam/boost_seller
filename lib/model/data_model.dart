class DataModel {
  String itemName;
  int itemPrice;
  String itemCategory;
  String itemImage;
  double? itemPoint;
  int itemSeller;
  String itemSite;
  List<String> suppliers = [];

  DataModel({
    required this.itemName,
    required this.itemCategory,
    required this.itemPrice,
    required this.itemImage,
    required this.itemSite,
    this.itemPoint = 0,
    this.itemSeller = 0,
  });
}
