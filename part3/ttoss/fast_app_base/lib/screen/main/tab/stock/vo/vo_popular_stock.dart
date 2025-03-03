import 'package:ttoss/screen/main/tab/stock/stock_percentage_data_provider.dart';
import 'package:ttoss/screen/main/tab/stock/vo/vo_simple_stock.dart';

class PopularStock extends SimpleStock with StockPercentageDAtaProvider {
  @override
  final int pastPrice;
  @override
  final int currentPrice;

  PopularStock({required this.pastPrice, required this.currentPrice, required String stockName})
  : super(stockName);

}