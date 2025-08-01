import 'package:boost_seller/model/data_model.dart';
import 'package:boost_seller/utilities/project_icons.dart';
import 'package:boost_seller/utilities/project_paddings.dart';
import 'package:boost_seller/utilities/project_text_datas.dart';
import 'package:boost_seller/utilities/project_textstyles.dart';
import 'package:boost_seller/views/items_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomItemView extends StatelessWidget {
  final String title;
  final List<DataModel> items;

  const CustomItemView({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildTitle(), _buildHorizontalProductList()],
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: ProjectPaddings.mainPadding,
      child: Text(title, style: ProjectTextstyles.titleTextStyle),
    );
  }

  // ürünleri yatay Liste Halinde gösterir
  Widget _buildHorizontalProductList() {
    return SizedBox(
      height: NumberValues.sizedBoxHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: ProjectPaddings.containerPadding,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: NumberValues.separatorWidth),
        itemBuilder: (context, index) => _buildProductCard(items[index]),
      ),
    );
  }

  // Ürün kartlarını oluşturur
  Widget _buildProductCard(DataModel item) {
    return GestureDetector(
      onTap: () => _navigateToItemDetail(item),
      child: Card(
        elevation: NumberValues.cardElevation,
        child: SizedBox(
          width: NumberValues.cardWidth,
          child: Padding(
            padding: ProjectPaddings.cardPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildProductImage(item),
                const SizedBox(height: NumberValues.defaultSpacing),
                _buildProductName(item),
                const SizedBox(height: NumberValues.defaultSpacing),
                _buildPriceAndSalesInfo(item),
                _buildRatingInfo(item),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // resimleri çeker
  Widget _buildProductImage(DataModel item) {
    return Expanded(child: Image.asset(item.itemImage, fit: BoxFit.contain));
  }

  Widget _buildProductName(DataModel item) {
    return Text(
      item.itemName,
      style: ProjectTextstyles.itemNameTextStyle,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildPriceAndSalesInfo(DataModel item) {
    return ListTile(
      contentPadding: ProjectPaddings.listTilePadding,
      leading: Text(
        "${item.itemPrice} ${StringValues.currency}",
        style: ProjectTextstyles.itemPriceTextStyle,
      ),
      title: const Divider(),
      trailing: Text(
        "${item.itemSoldCount} ${StringValues.soldLabel}",
        style: ProjectTextstyles.itemSoldTextStyle,
      ),
    );
  }

  Widget _buildRatingInfo(DataModel item) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProjectIcons.starIcon,
        const SizedBox(width: NumberValues.ratingSpacing),
        Text("${item.itemRating}", style: ProjectTextstyles.itemRatingTextStyle),
      ],
    );
  }

  void _navigateToItemDetail(DataModel item) {
    Get.to(() => ItemDetailPage(item: item));
  }
}
