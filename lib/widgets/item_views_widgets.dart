import 'package:e_commerce/controller/items_controller.dart';
import 'package:e_commerce/model/data_model.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
        ),
        Container(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
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
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Image.asset(item.itemImage, fit: BoxFit.contain)),
                        SizedBox(height: 8),
                        Text(
                          item.itemName,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                        Text("${item.itemPrice} ₺", style: TextStyle(color: Colors.grey[600])),
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
