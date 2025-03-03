import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/common/widget/w_arrow.dart';
import 'package:ttoss/common/widget/w_big_button.dart';
import 'package:ttoss/common/widget/w_rounded_container.dart';
import 'package:ttoss/screen/main/tab/stock/tab/w_interest_stock_list.dart';

import '../../../../../common/widget/w_long_button.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context),
        height20,
        getMyStocks(context),
      ],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
      color: context.appColors.roundedLayoutBackground,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height20,
        '계좌'.text.size(16).bold.white.make(),
        Row(
          children: [
            '${443.toComma()}원'.text.white.size(24).bold.make(),
            const Arrow(),
            emptyExpanded,
            RoundedContainer(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              radius: 8,
              backgroundColor: context.appColors.buttonBackground,
              child: '채우기'.text.make(),)
          ],
        ),
        height30,
        Line(color: context.appColors.myDivider),
        height10,
        LongButton(title: '주문내역',onTap: (){},size: 16),
        LongButton(title: '판매수익',onTap: (){},size: 16),


      ],
    ),
  );
  Widget getMyStocks(BuildContext context) => Column(
    children: [
      Container(
        color: context.appColors.roundedLayoutBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              height30,
              Row(
                children: [
                  '관심주식'.text.white.size(18).bold.make(),
                  emptyExpanded,
                  '편집하기'.text.color(context.appColors.greySymbol).make(),
                ],
              ),
              Tap(
                onTap: (){context.showSnackbar('기본 버튼');},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(children: [
                    '기본'.text.size(16).white.make(),
                    emptyExpanded,
                    const Arrow(direction: AxisDirection.down,size: 24,)
                  ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      InterestStockList(),

    ],
  );
}
