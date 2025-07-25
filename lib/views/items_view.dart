import 'package:e_commerce/model/datas.dart';
import 'package:e_commerce/views/items_detail.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/model/data_model.dart';
import 'package:e_commerce/model/items_constants.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  // Kategorilere göre ürünleri filtreleyen method
  List<DataModel> getItemsBySource(String source) {
    return Datas.getItems().where((item) => item.itemSourceSite.contains(source)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Boost Seller Demo"), centerTitle: true),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          CustomItemView(
            title: itemSourceSite.Babazon.name,
            items: getItemsBySource(itemSourceSite.Babazon.name),
          ),
          CustomItemView(
            title: itemSourceSite.Trendway.name,
            items: getItemsBySource(itemSourceSite.Trendway.name),
          ),
          CustomItemView(
            title: itemSourceSite.xBay.name,
            items: getItemsBySource(itemSourceSite.xBay.name),
          ),
          CustomItemView(
            title: itemSourceSite.Tabu.name,
            items: getItemsBySource(itemSourceSite.Tabu.name),
          ),
        ],
      ),
    );
  }
}

class CustomItemView extends StatelessWidget {
  final String title;
  final List<DataModel> items;

  const CustomItemView({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueGrey),
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
              final item = items[index];
              return GestureDetector(
                onTap: () => Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => ItemDetailPage(item: item))),
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
