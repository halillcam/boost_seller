import 'package:e_commerce/controller/items_controller.dart';
import 'package:e_commerce/model/datas.dart';
import 'package:e_commerce/widgets/item_views_widgets.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/model/data_model.dart';
import 'package:e_commerce/model/items_constants.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class ItemsView extends StatelessWidget {
  ItemsView({super.key});

  // Kategorilere göre ürünleri filtreleyen method
  /*  List<DataModel> getItemsBySource(String source) {
    return Datas.getItems().where((item) => item.itemSourceSite.contains(source)).toList();
  }*/
  ItemsController controller = Get.put(ItemsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Boost Seller Demo"), centerTitle: true),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          CustomItemView(
            title: itemSourceSite.Babazon.name,
            items: controller.getItemsBySource(itemSourceSite.Babazon.name),
          ),
          CustomItemView(
            title: itemSourceSite.Trendway.name,
            items: controller.getItemsBySource(itemSourceSite.Trendway.name),
          ),
          CustomItemView(
            title: itemSourceSite.xBay.name,
            items: controller.getItemsBySource(itemSourceSite.xBay.name),
          ),
          CustomItemView(
            title: itemSourceSite.Tabu.name,
            items: controller.getItemsBySource(itemSourceSite.Tabu.name),
          ),
        ],
      ),
    );
  }
}
