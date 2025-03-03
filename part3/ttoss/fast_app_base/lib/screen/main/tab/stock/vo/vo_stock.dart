import 'package:ttoss/screen/main/tab/stock/vo/vo_popular_stock.dart';

class Stock extends PopularStock {
  final String imagePath;

  Stock({
    required super.stockName,
    required super.pastPrice,
    required super.currentPrice,
    required this.imagePath,
  });


}
