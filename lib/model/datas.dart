import 'package:e_commerce/model/data_model.dart';
import 'package:e_commerce/model/items_constants.dart';

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
          ItemSuppliers.aliFather: 14500,
          ItemSuppliers.Selena: 14600,
          ItemSuppliers.babey: 13250,
          ItemSuppliers.dropper: 14800,
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
          ItemSuppliers.aliFather: 14500,
          ItemSuppliers.Selena: 14600,
          ItemSuppliers.babey: 13250,
          ItemSuppliers.dropper: 14800,
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
          ItemSuppliers.aliFather: 14500,
          ItemSuppliers.Selena: 14600,
          ItemSuppliers.babey: 13250,
          ItemSuppliers.dropper: 14800,
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
          ItemSuppliers.aliFather: 14500,
          ItemSuppliers.Selena: 14600,
          ItemSuppliers.babey: 13250,
          ItemSuppliers.dropper: 14800,
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
          ItemSuppliers.aliFather: 14500,
          ItemSuppliers.Selena: 14600,
          ItemSuppliers.babey: 13250,
          ItemSuppliers.dropper: 14800,
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
          ItemSuppliers.aliFather: 14500,
          ItemSuppliers.Selena: 14600,
          ItemSuppliers.babey: 13250,
          ItemSuppliers.dropper: 14800,
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
          ItemSuppliers.aliFather: 14500,
          ItemSuppliers.Selena: 14600,
          ItemSuppliers.babey: 13250,
          ItemSuppliers.dropper: 14800,
        },
      ),
    );
    return items;
  }
}
