import 'package:boost_seller/controller/items_controller.dart';
import 'package:boost_seller/utilities/project_Texts.dart';
import 'package:boost_seller/utilities/project_paddings.dart';
import 'package:boost_seller/widgets/item_views_widgets.dart';
import 'package:flutter/material.dart';
import 'package:boost_seller/model/items_constants.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

// ignore: must_be_immutable
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
      appBar: AppBar(title: ProjectTexts.mainAppBarText),
      body: ListView(
        padding: ProjectPaddings.categoryPadding,
        children: [
          CustomItemView(
            title: itemSourceSite.Babazon.name,
            items: controller.getItemsBySources(itemSourceSite.Babazon.name),
          ),
          CustomItemView(
            title: itemSourceSite.Trendway.name,
            items: controller.getItemsBySources(itemSourceSite.Trendway.name),
          ),
          CustomItemView(
            title: itemSourceSite.xBay.name,
            items: controller.getItemsBySources(itemSourceSite.xBay.name),
          ),
          CustomItemView(
            title: itemSourceSite.Tabu.name,
            items: controller.getItemsBySources(itemSourceSite.Tabu.name),
          ),
        ],
      ),
    );
  }
}
