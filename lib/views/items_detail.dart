import 'package:e_commerce/model/data_model.dart';
import 'package:flutter/material.dart';

class ItemsDetail extends StatelessWidget {
  const ItemsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Container(width: 400, height: 400, child: Image.asset("name")),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class SuppliersView extends StatelessWidget {
  SuppliersView({super.key, required this.datas});
  List<DataModel> datas;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(leading: Icon(Icons.abc), title: Text("data")),
    );
  }
}
