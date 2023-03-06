import 'package:finance_balance_display/financeApps.dart/propertyClass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'financeApps.dart/financeMain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static String appTitle = 'Home';
  static String bodyTitle = 'Welcome,';
  static String bodyTitle_2 = 'Indigo Violet';
  static String bodyCardTitleLeft = 'Bartholomew Shoe';
  static String bodyOperations = 'Easy Operations';
  static String bodyOperations_change = 'Change';
  static String bodyOperations_Transfer = 'Transfer';
  static String bodyOperations_Incoming = 'Incoming';
  static String bodyOperations_Receipt = 'Receipt';
  static String bodyOperations_More = 'More';
  static String bodyTransactions = 'Previous Transactions';
  static String bodyTransactionsIncome = 'Rental Income';
  static String bodyTransactionsShopping = 'Grocery Shopping';
  static String bodyTransactionsPayment = 'Payment from Eric';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(

        //    backgroundColor: Color(0xFF3370AD),
        //     ),
        canvasColor: Color(0xFF4C81B6),
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Color(0xFF4C81B6)),
            titleTextStyle: TextStyle(color: MyColors.colorBlack),
            backgroundColor: Colors.transparent,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light),
        textTheme: TextTheme(
            headlineSmall: TextStyle(
                fontSize: 20, letterSpacing: 2, color: MyColors.colorBlack),
            titleSmall: TextStyle(
                color: MyColors.colorBlack_o, fontSize: 12, letterSpacing: 2)),
      ),
      home: FinanceMain(),
    );
  }
}
