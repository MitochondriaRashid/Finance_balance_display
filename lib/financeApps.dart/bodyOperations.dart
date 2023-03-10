import 'dart:math';

import 'package:finance_balance_display/financeApps.dart/propertyClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'bodyCard.dart';
import 'financeMain.dart';
import 'operationsContainer.dart';

class BodyOperations extends StatefulWidget {
  const BodyOperations({super.key});

  @override
  State<BodyOperations> createState() => _BodyOperations();
}

class _BodyOperations extends State<BodyOperations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              MyApp.bodyOperations,
              style: TextStyle(
                  color: MyColors.colorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
            PopupMenuButton(
                child: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                      PopupMenuItem(
                          value: 1,
                          onTap: () {
                            print('value 1 tapped');
                          },
                          child: Text(
                            'Data 1',
                            style: TextStyle(
                                color: MyColors.colorBlack,
                                fontWeight: FontWeight.w500),
                          )),
                      PopupMenuItem(
                        value: 2,
                        onTap: () {
                          print('value 2 tapped');
                        },
                        child: Text(
                          'Data 2',
                          style: TextStyle(
                              color: MyColors.colorBlack,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 3,
                        onTap: () {
                          print('value 3 tapped');
                        },
                        child: Text(
                          'Data 3',
                          style: TextStyle(
                              color: MyColors.colorBlack,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ])
          ],
        ),
        SizedBox(
          height: 15.00,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.all(10.00),
            child: Row(
              children: [
                OperationsContainer(
                  onTap: () {
                    print('asdsa');
                    setState(() {
                      BodyCard(
                          randomNumber: Random().nextInt(2000),
                          randomNumber2: Random().nextInt(2000),
                          randomNumber3: Random().nextInt(2000),
                          randomNumber4: Random().nextInt(2000));
                    });
                  },
                  iconDisplay: Icons.currency_exchange_outlined,
                  iconText: MyApp.bodyOperations_change,
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 10),
                OperationsContainer(
                    onTap: () {
                      setState(() {
                        BodyCard(
                            randomNumber:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber2:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber3:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber4: Random().nextInt(2000) +
                                Random().nextInt(9000));
                      });
                    },
                    iconDisplay: Icons.arrow_upward,
                    iconText: MyApp.bodyOperations_Transfer),
                SizedBox(width: MediaQuery.of(context).size.width / 10),
                OperationsContainer(
                    onTap: () {
                      setState(() {
                        BodyCard(
                            randomNumber:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber2:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber3:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber4: Random().nextInt(2000) +
                                Random().nextInt(9000));
                      });
                    },
                    iconDisplay: Icons.arrow_downward,
                    iconText: MyApp.bodyOperations_Incoming),
                SizedBox(width: MediaQuery.of(context).size.width / 10),
                OperationsContainer(
                    onTap: () {
                      setState(() {
                        BodyCard(
                            randomNumber:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber2:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber3:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber4: Random().nextInt(2000) +
                                Random().nextInt(9000));
                      });
                    },
                    iconDisplay: Icons.receipt,
                    iconText: MyApp.bodyOperations_Receipt),
                SizedBox(width: MediaQuery.of(context).size.width / 10),
                OperationsContainer(
                    onTap: () {
                      setState(() {
                        BodyCard(
                            randomNumber:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber2:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber3:
                                Random().nextInt(2000) + Random().nextInt(9000),
                            randomNumber4: Random().nextInt(2000) +
                                Random().nextInt(9000));
                      });
                    },
                    iconDisplay: Icons.read_more,
                    iconText: MyApp.bodyOperations_More),
              ],
            ),
          ),
        )
      ],
    );
  }
}
