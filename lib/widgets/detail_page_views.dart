import 'package:boost_seller/controller/items_controller.dart';
import 'package:boost_seller/model/data_model.dart';
import 'package:boost_seller/model/items_constants.dart';
import 'package:boost_seller/utilities/project_paddings.dart';
import 'package:boost_seller/utilities/project_text_datas.dart';
import 'package:boost_seller/utilities/project_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return _buildProductCard(context);
  }

  // ListTile içerisinde tedarikçi adı, fiyat ve mağaza ikonu bulunur
  Widget _buildProductCard(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.storefront),
        title: Text(supplier.name),
        trailing: _buildPriceText(),
        onTap: () => _handleCardTap(context),
      ),
    );
  }

  // Fiyat bilgisini formatlanmış şekilde gösteren text widget'ı oluşturur
  Widget _buildPriceText() {
    return Text('$price ${StringValues.currency}', style: ProjectTextstyles.listTileTextStyle);
  }

  // Null safety kontrolü yapar ve kar hesapladıktan sonra dialog açar
  void _handleCardTap(BuildContext context) {
    // Null safety - fiyat boş ise işlem yapma
    if (price == null) return;

    final profit = _calculateProfit();
    _showProfitDialog(context, profit);
  }

  // Market fiyatı ve tedarik fiyatı arasındaki farkı komisyon ile hesaplar
  double _calculateProfit() {
    return controller.calculateProfit(marketPrice: item.itemPrice, supplierPrice: price ?? 0);
  }

  // Kar bilgilerini gösteren alert dialog'u açar

  void _showProfitDialog(BuildContext context, double profit) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(supplier.name),
        content: _buildDialogContent(profit),
        actions: [_buildConfirmButton()],
      ),
    );
  }

  // Dialog içeriğini oluşturur - satış, tedarik fiyatı ve kar bilgisi
  //
  Widget _buildDialogContent(double profit) {
    return Padding(
      padding: ProjectPaddings.detailPagePadding,
      child: Text(_buildProfitText(profit)),
    );
  }

  // Kar hesaplama bilgilerini içeren text'i düzenler
  //
  String _buildProfitText(double profit) {
    final commissionPercent = (NumberValues.commissionRate * 100).toInt();

    return '${StringValues.sellPriceLabel}: ${item.itemPrice} ${StringValues.currency}\n\n'
        '${StringValues.supplierPriceLabel}: $price ${StringValues.currency}\n\n'
        '%$commissionPercent ${StringValues.profitLabel}: ${profit.toStringAsFixed(2)} ${StringValues.currency}';
  }

  //Basıldığında dialog'u kapatır
  Widget _buildConfirmButton() {
    return TextButton(onPressed: Get.back, child: const Text(StringValues.confirmButtonText));
  }
}
