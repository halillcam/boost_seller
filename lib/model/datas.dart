import 'package:boost_seller/model/data_model.dart';
import 'package:boost_seller/model/items_constants.dart';

class Datas {
  static List<DataModel> getItems() {
    List<DataModel> items = [];
    items.add(
      DataModel(
        itemName: ItemsTexts.gucci_canta,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: ItemPrices.gucci_price,
        itemImage: ImageUrls.gucciCanta,
        itemSourceSite: [
          itemSourceSite.Babazon.name,
          itemSourceSite.Tabu.name,
          itemSourceSite.Trendway.name,
        ],
        suppliers: [
          ItemSuppliers.aliFather.name,
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
    );

    items.add(
      DataModel(
        itemName: ItemsTexts.galatasaray_ceket,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: ItemPrices.ceket_price,
        itemImage: ImageUrls.gsCeket,
        itemSourceSite: [
          itemSourceSite.Babazon.name,
          itemSourceSite.Tabu.name,
          itemSourceSite.Trendway.name,
        ],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 215,
          ItemSuppliers.Selena: 175,
          ItemSuppliers.babey: 165,
          ItemSuppliers.dropper: 150,
        },
      ),
    );
    items.add(
      DataModel(
        itemName: ItemsTexts.iphone_telefon,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: ItemPrices.iphone_price,
        itemImage: ImageUrls.iphoneTelefon,
        itemSourceSite: [
          itemSourceSite.Babazon.name,
          itemSourceSite.Tabu.name,
          itemSourceSite.Trendway.name,
          itemSourceSite.xBay.name,
        ],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 9000,
          ItemSuppliers.Selena: 8999,
          ItemSuppliers.babey: 8990,
          ItemSuppliers.dropper: 8999,
        },
      ),
    );
    items.add(
      DataModel(
        itemName: ItemsTexts.kazak,
        itemCategory: ItemCategories.Fashion.name,
        itemPrice: ItemPrices.kazak_price,
        itemImage: ImageUrls.kazak,
        itemSourceSite: [
          itemSourceSite.Babazon.name,
          itemSourceSite.Tabu.name,
          itemSourceSite.Trendway.name,
        ],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 75,
          ItemSuppliers.Selena: 75,
          ItemSuppliers.babey: 85,
          ItemSuppliers.dropper: 65,
        },
      ),
    );
    items.add(
      DataModel(
        itemName: ItemsTexts.macbook_pro,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: ItemPrices.macbook_price,
        itemImage: ImageUrls.mackbookPro,
        itemSourceSite: [
          itemSourceSite.Babazon.name,
          itemSourceSite.Tabu.name,
          itemSourceSite.Trendway.name,
          itemSourceSite.xBay.name,
        ],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 9000,
          ItemSuppliers.Selena: 8999,
          ItemSuppliers.babey: 8965,
          ItemSuppliers.dropper: 8985,
        },
      ),
    );
    items.add(
      DataModel(
        itemName: ItemsTexts.rolex_saat,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: ItemPrices.rolex_price,
        itemImage: ImageUrls.rolexSsaat,
        itemSourceSite: [
          itemSourceSite.xBay.name,
          itemSourceSite.Tabu.name,
          itemSourceSite.Trendway.name,
        ],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 8650,
          ItemSuppliers.Selena: 8750,
          ItemSuppliers.babey: 8800,
          ItemSuppliers.dropper: 8900,
        },
      ),
    );
    items.add(
      DataModel(
        itemName: ItemsTexts.samsung_telefon,
        itemCategory: ItemCategories.Electronics.name,
        itemPrice: ItemPrices.samsung_price,
        itemImage: ImageUrls.samsungTelefon,
        itemSourceSite: [
          itemSourceSite.Babazon.name,
          itemSourceSite.Tabu.name,
          itemSourceSite.Trendway.name,
        ],
        suppliers: [
          ItemSuppliers.aliFather.name,
          ItemSuppliers.babey.name,
          ItemSuppliers.dropper.name,
        ],
        suppliersPrices: {
          ItemSuppliers.aliFather: 4450,
          ItemSuppliers.Selena: 4500,
          ItemSuppliers.babey: 4800,
          ItemSuppliers.dropper: 4800,
        },
      ),
    );
    return items;
  }
}
