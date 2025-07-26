import 'package:e_commerce/controller/items_controller.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/model/data_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ItemDetailPage extends StatelessWidget {
  final DataModel item;

  ItemDetailPage({Key? key, required this.item}) : super(key: key);
  final ItemsController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    final supplierPrices = item.suppliersPrices;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Boost Seller Demo",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(item.itemImage, height: 200, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                item.itemName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: supplierPrices.length,
                itemBuilder: (context, index) {
                  final supplier = supplierPrices.keys.elementAt(index);
                  final price = supplierPrices[supplier];

                  return Card(
                    child: ListTile(
                      title: Text(supplier.name),
                      trailing: Text("$price ₺", style: TextStyle(fontWeight: FontWeight.bold)),
                      leading: Icon(Icons.storefront),
                      onTap: () {
                        final profit = controller.calculateProfit(
                          marketPrice: item.itemPrice,
                          supplierPrice: price!,
                        );

                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text("${supplier.name} için Kâr Hesabı"),
                            content: Text(
                              "Satış Fiyatı: ${item.itemPrice} ₺\n"
                              "Tedarik Fiyatı: $price ₺\n"
                              "%10 komisyonla Net Kar: ${profit.toStringAsFixed(2)} ₺",
                            ),
                            actions: [
                              TextButton(onPressed: () => Get.back(), child: Text("Tamam")),
                            ],
                          ),
                        );
                      },
                    ),
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
