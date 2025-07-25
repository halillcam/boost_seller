import 'package:flutter/material.dart';
import 'package:e_commerce/model/data_model.dart';
import 'package:e_commerce/model/items_constants.dart';

class ItemDetailPage extends StatelessWidget {
  final DataModel item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final supplierPrices = item.suppliersPrices;

    return Scaffold(
      appBar: AppBar(title: Text(item.itemName)),
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
