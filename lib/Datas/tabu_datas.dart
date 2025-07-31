import 'package:boost_seller/model/data_model.dart';
import 'package:boost_seller/model/data_source.dart';
import 'package:boost_seller/model/items_constants.dart';

class TabuData extends IDataSource {
  @override
  List<DataModel> getItems() {
    // TODO: implement getItems
    return [
      DataModel(
        itemName: ItemsTexts.macbook_pro,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: 15300,
        itemImage: ImagePaths.macbook_pro.Path(),
        itemRating: 4.7,
        itemSoldCount: 850,
        itemSourceSite: ["Tabu"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 13800,
          ItemSuppliers.Selena: 13850,
          ItemSuppliers.babey: 13860,
          ItemSuppliers.dropper: 13860,
        },
      ),
      DataModel(
        itemName: ItemsTexts.kazak,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 125,
        itemImage: ImagePaths.kazak.Path(),
        itemRating: 3.8,
        itemSoldCount: 810,
        itemSourceSite: ["Tabu"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 110,
          ItemSuppliers.Selena: 109,
          ItemSuppliers.babey: 113,
          ItemSuppliers.dropper: 112,
        },
      ),
      DataModel(
        itemName: ItemsTexts.samsung_telefon,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: 11000,
        itemImage: ImagePaths.samsung_telefon.Path(),
        itemRating: 4.1,
        itemSoldCount: 1325,
        itemSourceSite: ["Tabu"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 9800,
          ItemSuppliers.Selena: 9850,
          ItemSuppliers.babey: 9900,
          ItemSuppliers.dropper: 9875,
        },
      ),
      DataModel(
        itemName: ItemsTexts.galatasaray_ceket,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 300,
        itemImage: ImagePaths.gs_ceket.Path(),
        itemRating: 4.9,
        itemSoldCount: 1905,
        itemSourceSite: ["Tabu"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 265,
          ItemSuppliers.Selena: 267,
          ItemSuppliers.babey: 268,
          ItemSuppliers.dropper: 269,
        },
      ),
      DataModel(
        itemName: ItemsTexts.iphone_telefon,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: 9500,
        itemImage: ImagePaths.iphone_15.Path(),
        itemRating: 4.3,
        itemSoldCount: 1600,
        itemSourceSite: ["Tabu"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 8550,
          ItemSuppliers.Selena: 8650,
          ItemSuppliers.babey: 8625,
          ItemSuppliers.dropper: 8630,
        },
      ),
    ];
  }
}
