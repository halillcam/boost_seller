import 'package:boost_seller/controller/items_controller.dart';
import 'package:boost_seller/model/data_model.dart';
import 'package:boost_seller/utilities/project_paddings.dart';
import 'package:boost_seller/utilities/project_textstyles.dart';
import 'package:boost_seller/views/items_detail.dart';
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
              final item = items[index];
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
                          style: TextStyle(fontSize: 13, color: Colors.cyanAccent),
                        ),
                        SizedBox(height: 8),

                        ListTile(
                          leading: Text(
                            "${item.itemPrice} ₺",
                            style: ProjectTextstyles.itemPriceTextStyle,
                          ),
                          title: Divider(),
                          trailing: Text(
                            "${item.itemSoldCount} sold out",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(left: 5, right: 5),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 4),
                            Text("${item.itemRating}", style: TextStyle(fontSize: 13)),
                          ],
                        ),
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
