import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/common/widget/w_rounded_container.dart';
import 'package:ttoss/screen/main/tab/home/vo/vo_bank_account.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;

  const BankAccountWidget({required this.account, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(account.bank.logoImagePath, width: 40),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                account.accountTypeName ?? "${account.bank.name} 통장",
              ).text.white.bold.size(8).make(),
              Text("${account.balance.toComma()} 원").text.white.size(16).bold.make(),
            ],
          ).pSymmetric(h: 15, v: 10),
        ),
        InkWell(
          onTap: (){},
          child: MaterialButton(
            onPressed: (){},
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            color: context.appColors.buttonBackground,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minWidth: 55,
            height: 35,
            child: "송금".text.bold.make(),
          ),
        ),
      ],
    );
  }
}

// RoundedContainer(
//             padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
//             backgroundColor: context.appColors.buttonBackground,
//             radius: 10,
//             child: "송금".text.bold.make(),
//           ),