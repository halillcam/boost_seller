import 'package:boost_seller/model/data_model.dart';
import 'package:boost_seller/model/data_source.dart';
import 'package:boost_seller/model/items_constants.dart';

class TrendwayData extends IDataSource {
  @override
  List<DataModel> getItems() {
    // TODO: implement getItems
    return [
      DataModel(
        itemName: ItemsTexts.galatasaray_ceket,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 250,
        itemImage: ImagePaths.gs_ceket.Path(),
        itemRating: 5,
        itemSoldCount: 10000,
        itemSourceSite: ["Trendway"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 200,
          ItemSuppliers.Selena: 175,
          ItemSuppliers.babey: 150,
          ItemSuppliers.dropper: 125,
        },
      ),
      DataModel(
        itemName: ItemsTexts.macbook_pro,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: 16000,
        itemImage: ImagePaths.macbook_pro.Path(),
        itemRating: 4.2,
        itemSoldCount: 120,
        itemSourceSite: ["Trendway"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 14337,
          ItemSuppliers.Selena: 14325,
          ItemSuppliers.babey: 14317,
          ItemSuppliers.dropper: 14320,
        },
      ),

      DataModel(
        itemName: ItemsTexts.gucci_canta,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 14000,
        itemImage: ImagePaths.gucci_canta.Path(),
        itemRating: 3.2,
        itemSoldCount: 87,
        itemSourceSite: ["Trendway"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 12300,
          ItemSuppliers.Selena: 12315,
          ItemSuppliers.babey: 12600,
          ItemSuppliers.dropper: 12500,
        },
      ),
      DataModel(
        itemName: ItemsTexts.samsung_telefon,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: 9999,
        itemImage: ImagePaths.samsung_telefon.Path(),
        itemRating: 4.1,
        itemSoldCount: 218,
        itemSourceSite: ["Trendway"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 8888,
          ItemSuppliers.Selena: 8750,
          ItemSuppliers.babey: 8890,
          ItemSuppliers.dropper: 9000,
        },
      ),
      DataModel(
        itemName: ItemsTexts.kazak,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 350,
        itemImage: ImagePaths.kazak.Path(),
        itemRating: 2.9,
        itemSoldCount: 13,
        itemSourceSite: ["Trendway"],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 315,
          ItemSuppliers.Selena: 318,
          ItemSuppliers.babey: 317,
          ItemSuppliers.dropper: 318,
        },
      ),
    ];
  }
}
