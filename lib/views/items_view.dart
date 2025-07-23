import 'package:e_commerce/model/items_constants.dart';
import 'package:flutter/material.dart';

class ItemsView extends StatefulWidget {
  const ItemsView({super.key});

  @override
  State<ItemsView> createState() => _ItemsViewState();
}

class _ItemsViewState extends State<ItemsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Boost Seller Demo"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.list))],
      ),
      body: ListView.separated(
        itemCount: 4,
        itemBuilder: (context, index) {
          Text("data");
          return CustomItemViews();
        },
        separatorBuilder: (context, index) {
          return Text("Shop");
        },
      ),
    );
  }
}

class CustomItemViews extends StatelessWidget {
  const CustomItemViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(40),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              height: 80,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(ImageUrls.gsCeket),
                  Text(
                    "Item Name",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  Text("Point"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
