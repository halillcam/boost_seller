import 'package:e_commerce/controller/items_controller.dart';
import 'package:e_commerce/model/data_model.dart';
import 'package:e_commerce/model/items_constants.dart';
import 'package:e_commerce/utilities/project_paddings.dart';
import 'package:e_commerce/utilities/project_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailPageCard extends StatelessWidget {
  const DetailPageCard({
    super.key,
    required this.supplier,
    required this.price,
    required this.controller,
    required this.item,
  });

  final ItemSuppliers supplier;
  final int? price;
  final ItemsController controller;
  final DataModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(supplier.name),
        trailing: Text("$price ₺", style: ProjectTextstyles.listTileTextStyle),
        leading: Icon(Icons.storefront),
        onTap: () {
          final profit = controller.calculateProfit(
            marketPrice: item.itemPrice,
            supplierPrice: price!,
          );

          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text("${supplier.name}"),
              content: Padding(
                padding: ProjectPaddings.detailPagePadding,
                child: Text(
                  "Satış Fiyatı: ${item.itemPrice} ₺\n\n"
                  "Tedarik Fiyatı: $price ₺\n\n"
                  "%10 komisyonla Kazancınız : ${profit.toStringAsFixed(2)} ₺",
                ),
              ),
              actions: [TextButton(onPressed: () => Get.back(), child: Text("Tamam"))],
            ),
          );
        },
      ),
    );
  }
}
