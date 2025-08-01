import 'package:boost_seller/controller/items_controller.dart';
import 'package:boost_seller/utilities/project_Texts.dart';
import 'package:boost_seller/utilities/project_paddings.dart';
import 'package:boost_seller/utilities/project_textstyles.dart';
import 'package:boost_seller/widgets/detail_page_views.dart';
import 'package:flutter/material.dart';
import 'package:boost_seller/model/data_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class ItemDetailPage extends StatelessWidget {
  final DataModel item;

  ItemDetailPage({super.key, required this.item});
  final ItemsController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    final supplierPrices = item.suppliersPrices;

    return Scaffold(
      appBar: AppBar(title: ProjectTexts.mainAppBarText),
      body: Center(
        child: Column(
          children: [
            Image.asset(item.itemImage, height: 200, fit: BoxFit.cover),
            Padding(
              padding: ProjectPaddings.detailPagePadding,
              child: Text(item.itemName, style: ProjectTextstyles.detailPageTextStyle),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: supplierPrices.length,
                itemBuilder: (context, index) {
                  final supplier = supplierPrices.keys.elementAt(index);
                  final price = supplierPrices[supplier];

                  return DetailPageCard(
                    supplier: supplier,
                    price: price,
                    controller: controller,
                    item: item,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
