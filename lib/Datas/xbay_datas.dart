import 'package:boost_seller/model/data_model.dart';
import 'package:boost_seller/model/data_source.dart';
import 'package:boost_seller/model/items_constants.dart';

class xBayData extends IDataSource {
  @override
  List<DataModel> getItems() {
    // TODO: implement getItems
    return [
      DataModel(
        itemName: ItemsTexts.iphone_telefon,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: 9950,
        itemImage: ImagePaths.iphone_15.Path(),
        itemRating: 4.1,
        itemSoldCount: 1120,
        itemSourceSite: ["xBay"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 9015,
          ItemSuppliers.Selena: 9075,
          ItemSuppliers.babey: 9030,
          ItemSuppliers.dropper: 9040,
        },
      ),
      DataModel(
        itemName: ItemsTexts.galatasaray_ceket,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 199,
        itemImage: ImagePaths.gs_ceket.Path(),
        itemRating: 5,
        itemSoldCount: 1905,
        itemSourceSite: ["xBay"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 175,
          ItemSuppliers.Selena: 178,
          ItemSuppliers.babey: 176,
          ItemSuppliers.dropper: 179,
        },
      ),
      DataModel(
        itemName: ItemsTexts.sweet_shirt,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 215,
        itemImage: ImagePaths.kapsun.Path(),
        itemRating: 3.7,
        itemSoldCount: 887,
        itemSourceSite: ["xBay"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 190,
          ItemSuppliers.Selena: 189,
          ItemSuppliers.babey: 187,
          ItemSuppliers.dropper: 191,
        },
      ),
      DataModel(
        itemName: ItemsTexts.macbook_pro,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: 1187,
        itemImage: ImagePaths.macbook_pro.Path(),
        itemRating: 4,
        itemSoldCount: 950,
        itemSourceSite: ["xBay"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 1050,
          ItemSuppliers.Selena: 1060,
          ItemSuppliers.babey: 1065,
          ItemSuppliers.dropper: 1067,
        },
      ),
      DataModel(
        itemName: ItemsTexts.rolex_saat,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 10000,
        itemImage: ImagePaths.rolex_saat.Path(),
        itemRating: 3.8,
        itemSoldCount: 511,
        itemSourceSite: ["xBay"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 9987,
          ItemSuppliers.Selena: 9973,
          ItemSuppliers.babey: 9978,
          ItemSuppliers.dropper: 9960,
        },
      ),
    ];
  }
}
