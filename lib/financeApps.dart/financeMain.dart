// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:finance_balance_display/financeApps.dart/propertyClass.dart';
import 'package:finance_balance_display/main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'bodyCard.dart';
import 'bodyOperations.dart';
import 'bodyTitle.dart';
import 'listSheet.dart';

class FinanceMain extends StatefulWidget {
  var myRandom1 = 0;
  var myRandom2 = 0;
  var myRandom3 = 0;
  var myRandom4 = 0;

  @override
  State<FinanceMain> createState() => _FinanceMainState();
}

class _FinanceMainState extends State<FinanceMain> {
  var myCase1;
  var myCase2;
  var myCase3;
  var myCase4;

  var mySet1 = 0;
  var mySet2 = 0;
  var mySet3 = 0;
  var mySet4 = 0;

  int _currentState = 0;

  @override
  void initState() {
    super.initState();
    // FinanceMain().myRandom1 = Random().nextInt(1111) + 8888;
    //  var myrandom = FinanceMain(myRandom1: (Random().nextInt(1111) + 8888),myRandom2: (Random().nextInt(2222) + 6666),myRandom3: (Random().nextInt(3333) + 6666),myRandom4: (Random().nextInt(1111) + 8888));

    mySet1 = FinanceMain().myRandom1 = Random().nextInt(1111) + 8888;
    mySet2 = FinanceMain().myRandom1 = Random().nextInt(2222) + 6666;
    mySet3 = FinanceMain().myRandom1 = Random().nextInt(3333) + 6666;
    mySet4 = FinanceMain().myRandom1 = Random().nextInt(1111) + 8888;

    myCase1 = mySet1;
    myCase2 = mySet2;
    myCase3 = mySet3;
    myCase4 = mySet4;
    //  FinanceMain().myRandom2 = Random().nextInt(2222) + 6666;
    //  FinanceMain().myRandom3 = Random().nextInt(3333) + 6666;
    //  FinanceMain().myRandom4 = Random().nextInt(1111) + 8888;

    print('${myCase1} - ${myCase2} - ${myCase3} - ${myCase4}');
  }

  @override
  Widget build(BuildContext context) {
    var themeof = Theme.of(context).textTheme;
    var dispSize = MediaQuery.of(context);
    var displayWidth = dispSize.size.width;
    var displayHeight = dispSize.size.height;

    var text6500 = Text(
      '% + 6,500.00',
      style: TextStyle(color: MyColors.colorGreen),
    );
    var text2 = Text(
      'Rental Home',
      style: TextStyle(color: Colors.black),
    );
    var text3 = Text(
      '14 July 2021',
      style: TextStyle(color: Colors.grey[600]),
    );
    var icon2 = Icon(
      Icons.home,
      color: Colors.blueGrey[300],
    );
    return Scaffold(
      appBar: AppBar(
        // iconTheme: IconThemeData(color: Color(0xFF3370AD)),
        title: Text(
          MyApp.appTitle,
          style: MyFonts.appbarFontSize,
        ),
        centerTitle: true,
        actions: [
          Container(
              padding: EdgeInsets.only(right: 10.0),
              constraints: BoxConstraints(
                minWidth: 20,
                maxWidth: 45,
              ),
              child: Image.asset('image/C2.png'))
        ],
      ),
      backgroundColor: MyColors.colorBckWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              BodyTitle(themeofcontext: themeof),
              SizedBox(
                height: 30.00,
              ),
              BodyCard(
                  randomNumber: myCase1,
                  randomNumber2: myCase2,
                  randomNumber3: myCase3,
                  randomNumber4: myCase4),
              SizedBox(
                height: 30.00,
              ),
              BodyOperations(),
              SizedBox(
                height: 30.00,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListSheet(
                      icnonka: icon2,
                      articleka: text2,
                      subtitleka: text3,
                      trailka: text6500),
                  ListSheet(
                      icnonka: icon2,
                      articleka: text2,
                      subtitleka: text3,
                      trailka: text6500),
                  ListSheet(
                      icnonka: icon2,
                      articleka: text2,
                      subtitleka: text3,
                      trailka: text6500),
                  ListSheet(
                      icnonka: icon2,
                      articleka: text2,
                      subtitleka: text3,
                      trailka: text6500)
                ],
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF3370AD), // arka plan rengi
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Center(child: Text("Drawer Header")),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {},
              ),
              // diğer liste öğeleri
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      bottomNavigationBar: Container(
        color: Color(0xFF3370AD),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 10.00, vertical: 10.00),
          child: GNav(
            backgroundColor: Color(0xFF3370AD),
            tabBackgroundColor: MyColors.colorWhite,
            color: MyColors.colorBckWhite,
            activeColor: Color(0xFF3370AD),
            padding: EdgeInsets.all(14.00),
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.bar_chart_outlined,
                text: 'Chart',
              ),
              GButton(
                icon: Icons.grid_view_sharp,
                text: 'Grid',
              ),
              GButton(
                icon: Icons.account_circle_rounded,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
