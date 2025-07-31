import 'package:boost_seller/model/data_model.dart';
import 'package:boost_seller/model/data_source.dart';
import 'package:boost_seller/model/items_constants.dart';

class BabazonData extends IDataSource {
  @override
  List<DataModel> getItems() {
    // TODO: implement getItems
    return [
      DataModel(
        itemName: ItemsTexts.iphone_telefon,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: 9850,
        itemImage: ImagePaths.iphone_15.Path(),
        itemRating: 4.8,
        itemSoldCount: 1100,
        itemSourceSite: ["Babazon"],
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
        itemName: ItemsTexts.gucci_canta,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 9850,
        itemImage: ImagePaths.gucci_canta.Path(),
        itemRating: 4,
        itemSoldCount: 80,
        itemSourceSite: [itemSourceSite.Babazon.name],
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
        itemName: ItemsTexts.galatasaray_ceket,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 250,
        itemImage: ImagePaths.gs_ceket.Path(),
        itemRating: 5,
        itemSoldCount: 10000,
        itemSourceSite: [itemSourceSite.Babazon.name],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 175,
          ItemSuppliers.Selena: 180,
          ItemSuppliers.babey: 185,
          ItemSuppliers.dropper: 179,
        },
      ),
      DataModel(
        itemName: ItemsTexts.sweet_shirt,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 200,
        itemImage: ImagePaths.kapsun.Path(),
        itemRating: 3.5,
        itemSoldCount: 57,
        itemSourceSite: [itemSourceSite.Babazon.name],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 180,
          ItemSuppliers.Selena: 150,
          ItemSuppliers.babey: 125,
          ItemSuppliers.dropper: 130,
        },
      ),
      DataModel(
        itemName: ItemsTexts.kazak,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 150,
        itemImage: ImagePaths.kazak.Path(),
        itemRating: 3.7,
        itemSoldCount: 45,
        itemSourceSite: [itemSourceSite.Babazon.name],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 125,
          ItemSuppliers.Selena: 130,
          ItemSuppliers.babey: 132,
          ItemSuppliers.dropper: 138,
        },
      ),
      DataModel(
        itemName: ItemsTexts.rolex_saat,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: 9850,
        itemImage: ImagePaths.rolex_saat.Path(),
        itemRating: 4.3,
        itemSoldCount: 580,
        itemSourceSite: [itemSourceSite.Babazon.name],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.Selena.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 8750,
          ItemSuppliers.Selena: 8800,
          ItemSuppliers.babey: 8899,
          ItemSuppliers.dropper: 8650,
        },
      ),
    ];
  }
}
