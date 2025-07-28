import 'package:e_commerce/controller/items_controller.dart';
import 'package:e_commerce/model/data_model.dart';
import 'package:e_commerce/utilities/project_paddings.dart';
import 'package:e_commerce/utilities/project_textstyles.dart';
import 'package:e_commerce/views/items_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomItemView extends StatelessWidget {
  final String title;
  final List<DataModel> items;
  final controller = Get.find<ItemsController>();
  CustomItemView({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: ProjectPaddings.mainPadding,
          child: Text(title, style: ProjectTextstyles.titleTextStyle),
        ),
        Container(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: ProjectPaddings.containerPadding,
            itemCount: items.length,
            separatorBuilder: (context, index) => SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item = controller.items[index];
              return GestureDetector(
                onTap: () {
                  Get.to(() => ItemDetailPage(item: item));
                },
                child: Card(
                  elevation: 4,
                  child: Container(
                    width: 160,
                    padding: ProjectPaddings.cardPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Image.asset(item.itemImage, fit: BoxFit.contain)),
                        SizedBox(height: 8),
                        Text(
                          item.itemName,
                          style: ProjectTextstyles.itemNameTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        Text("${item.itemPrice} ₺", style: ProjectTextstyles.itemPriceTextStyle),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
