import 'package:finance_balance_display/financeApps.dart/propertyClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class BodyCard extends StatelessWidget {
  final int randomNumber;
  final int randomNumber2;
  final int randomNumber3;
  final int randomNumber4;

  const BodyCard({
    required this.randomNumber,
    required this.randomNumber2,
    required this.randomNumber3,
    required this.randomNumber4,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: MyColors.colorBlack_o,
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        width: 370,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff3E54AC),
                  Color(0xff94EDF7),
                ])),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    MyApp.bodyCardTitleLeft,
                    style: MyFonts.bodyWidgetDownFontSize,
                  ),
                  Container(
                      padding: EdgeInsets.only(right: 10.0),
                      constraints: BoxConstraints(
                        minWidth: 20,
                        maxWidth: 40,
                      ),
                      child: Image.asset('image/C2.png'))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$randomNumber - $randomNumber2 - $randomNumber3 - $randomNumber4',
                    style: TextStyle(fontSize: 22, letterSpacing: 3.1),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Valid THRU'), Text('CVV')],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('07/24'), Text('***')],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
