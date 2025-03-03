import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/screen/main/tab/stock/vo/vo_stock.dart';

class StockItem extends StatelessWidget  {
  final Stock stock;
  const StockItem({super.key, required this.stock});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.baseBackground,
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Row(
        children: [
          Image.asset(stock.imagePath,width: 48,),
          width20,
          stock.stockName.text.bold.white.size(16).make(),
          emptyExpanded,
          Column(children: [
            stock.todayPercentageString.text.color(stock.getPriceColor(context)).make(),
            "${stock.currentPrice.toComma()}원".text.color(context.appColors.greySymbol).make(),
          ],)
        ],
      ),
    );
  }
}
