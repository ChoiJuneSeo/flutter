import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttoss/common/common.dart';

abstract mixin class StockPercentageDAtaProvider{

  int get currentPrice;
  int get pastPrice;

  double get todayPercentage => ((currentPrice - pastPrice)/pastPrice*100).toPrecision(2);

  String get todayPercentageString => "$symbol${todayPercentage.abs()}%";

  bool get isPlus => currentPrice > pastPrice;
  bool get isSame => currentPrice == pastPrice;
  bool get isMinus => currentPrice < pastPrice;

  String get symbol => isSame? "" : isPlus? "+" : "-";

  Color getPriceColor(BuildContext context) => isSame? context.appColors.greySymbol : isPlus? context.appColors.plus : context.appColors.minus;
}