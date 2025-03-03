import 'package:flutter/material.dart';
import 'package:ttoss/screen/main/tab/stock/stocks_dummy.dart';
import 'package:ttoss/screen/main/tab/stock/tab/w_stock_item.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInterestStocks.map((element)=>StockItem(stock: element)).toList()
      ],
    );
  }
}
