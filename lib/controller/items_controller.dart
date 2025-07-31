import 'package:boost_seller/Datas/babazon_datas.dart';
import 'package:boost_seller/Datas/tabu_datas.dart';
import 'package:boost_seller/Datas/trendway_datas.dart';
import 'package:boost_seller/Datas/xbay_datas.dart';
import 'package:boost_seller/model/data_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class ItemsController extends GetxController {
  final items = <DataModel>[].obs;

  @override
  /* void onInit() {
    // TODO: implement onInit
    super.onInit();
    items.addAll(Datas.getItems());
  }*/
  // price Calculate
  double calculateProfit({
    required int marketPrice,
    required int supplierPrice,
    double commissionRate = 0.10,
  }) {
    final commission = supplierPrice * commissionRate;
    final totalCost = supplierPrice + commission;
    final profit = marketPrice - totalCost;
    return profit;
  }

  // Kategorilere göre ürünleri filtreleyen method
  /* List<DataModel> getItemsBySource(String source) {
    return Datas.getItems().where((item) => item.itemSourceSite.contains(source)).toList();
  }*/

  // test tarafı

  final babazonData = BabazonData();
  final trendwayData = TrendwayData();
  final xbayData = xBayData();
  final tabuData = TabuData();

  List<DataModel> getItemsBySources(String source) {
    switch (source) {
      case "Babazon":
        return babazonData.getItems();
      case "Trendway":
        return trendwayData.getItems();
      case "xBay":
        return xbayData.getItems();
      case "Tabu":
        return tabuData.getItems();
      default:
        return [];
    }
  }
}
