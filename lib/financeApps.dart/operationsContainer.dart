import 'package:finance_balance_display/financeApps.dart/propertyClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OperationsContainer extends StatelessWidget {
  final iconDisplay;
  final iconText;
  final VoidCallback onTap;

  const OperationsContainer(
      {required this.iconDisplay, required this.iconText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
              padding: EdgeInsets.all(15.00),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.00)),
                  color: MyColors.colorWhite,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]),
              child: Icon(
                iconDisplay,
                color: MyColors.colorBlack_o,
              )),
        ),
        SizedBox(
          height: 10.00,
        ),
        Text(
          iconText,
          style: TextStyle(color: MyColors.colorBlack_o),
        )
      ],
    );
  }
}
