// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:finance_balance_display/financeApps.dart/propertyClass.dart';
import 'package:finance_balance_display/main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
              BodyTransactions(),
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

      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         color: Color(0xff94C3F6),
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.bar_chart_outlined,
      //           color: MyColors.icon,
      //         ),
      //         label: 'Chart'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.grid_view_sharp,
      //           color: MyColors.icon,
      //         ),
      //         label: 'Grid'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.account_circle_rounded,
      //           color: MyColors.icon,
      //         ),
      //         label: 'Account'),

      //   ],
      //   backgroundColor: Colors.red,
      // ),
      // bottomNavigationBar: SalomonBottomBar(
      //     currentIndex: _currentState,

      //     onTap: (index) {
      //       setState(() {
      //         _currentState = index;
      //       });
      //     },
      //     items: [
      //       SalomonBottomBarItem(
      //           icon: Icon(Icons.home),
      //           title: Text('Home'),
      //           selectedColor: Color(0xff48466D)),
      //       SalomonBottomBarItem(
      //           icon: Icon(Icons.bar_chart_outlined),
      //           title: Text('Chart'),
      //           selectedColor: Color(0xff3D84A8)),
      //       SalomonBottomBarItem(
      //           icon: Icon(Icons.grid_view_sharp),
      //           title: Text('Grid'),
      //           selectedColor: Color(0xff46CDCF)),
      //       SalomonBottomBarItem(
      //           icon: Icon(Icons.account_circle_rounded),
      //           title: Text('Profile'),
      //           selectedColor: Color(0xffABEDD8)),
      //     ],

      //     ),

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

class BodyTitle extends StatelessWidget {
  var themeofcontext;

  BodyTitle({required this.themeofcontext});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(MyApp.bodyTitle, style: themeofcontext.headlineSmall),
            Text(
              MyApp.bodyTitle_2,
              style: themeofcontext.titleSmall,
            )
          ],
        ),
      ],
    );
  }
}

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

// class BodyOperations extends StatelessWidget {
//   const BodyOperations({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               MyApp.bodyOperations,
//               style: TextStyle(
//                   color: MyColors.colorBlack,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   letterSpacing: 1),
//             ),
//             PopupMenuButton(
//                 child: Icon(Icons.more_vert),
//                 itemBuilder: (context) => [
//                       PopupMenuItem(
//                           value: 1,
//                           onTap: () {
//                             print('value 1 tapped');
//                           },
//                           child: Text(
//                             'Data 1',
//                             style: TextStyle(
//                                 color: MyColors.colorBlack,
//                                 fontWeight: FontWeight.w500),
//                           )),
//                       PopupMenuItem(
//                         value: 2,
//                         onTap: () {
//                           print('value 2 tapped');
//                         },
//                         child: Text(
//                           'Data 2',
//                           style: TextStyle(
//                               color: MyColors.colorBlack,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                       PopupMenuItem(
//                         value: 3,
//                         onTap: () {
//                           print('value 3 tapped');
//                         },
//                         child: Text(
//                           'Data 3',
//                           style: TextStyle(
//                               color: MyColors.colorBlack,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                     ])
//           ],
//         ),
//         SizedBox(
//           height: 15.00,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             // OperationsContainer(
//             //   iconDisplay: Icons.currency_exchange_outlined,
//             //   iconText: MyApp.bodyOperations_change,
//             // ),
//             // OperationsContainer(
//             //     iconDisplay: Icons.arrow_upward,
//             //     iconText: MyApp.bodyOperations_Transfer),
//             // OperationsContainer(
//             //     iconDisplay: Icons.arrow_downward,
//             //     iconText: MyApp.bodyOperations_Incoming),
//             // OperationsContainer(
//             //     iconDisplay: Icons.receipt,
//             //     iconText: MyApp.bodyOperations_Receipt),
//             // OperationsContainer(
//             //     iconDisplay: Icons.read_more,
//             //     iconText: MyApp.bodyOperations_More),

//             Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     print('printed');

//                   },
//                   child: Container(
//                       padding: EdgeInsets.all(15.00),
//                       decoration: BoxDecoration(
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(10.00)),
//                           color: MyColors.colorWhite,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 2,
//                                 offset: Offset(0, 1))
//                           ]),
//                       child: Icon(
//                         Icons.currency_exchange_outlined,
//                         color: MyColors.colorBlack_o,
//                       )),
//                 ),
//                 SizedBox(
//                   height: 10.00,
//                 ),
//                 Text(
//                   MyApp.bodyOperations_change,
//                   style: TextStyle(color: MyColors.colorBlack_o),
//                 )
//               ],
//             ),
//             Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     print('printed');
//                   },
//                   child: Container(
//                       padding: EdgeInsets.all(15.00),
//                       decoration: BoxDecoration(
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(10.00)),
//                           color: MyColors.colorWhite,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 2,
//                                 offset: Offset(0, 1))
//                           ]),
//                       child: Icon(
//                         Icons.arrow_upward,
//                         color: MyColors.colorBlack_o,
//                       )),
//                 ),
//                 SizedBox(
//                   height: 10.00,
//                 ),
//                 Text(
//                   MyApp.bodyOperations_Transfer,
//                   style: TextStyle(color: MyColors.colorBlack_o),
//                 )
//               ],
//             ),
//             Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     print('printed');
//                   },
//                   child: Container(
//                       padding: EdgeInsets.all(15.00),
//                       decoration: BoxDecoration(
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(10.00)),
//                           color: MyColors.colorWhite,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 2,
//                                 offset: Offset(0, 1))
//                           ]),
//                       child: Icon(
//                         Icons.arrow_downward,
//                         color: MyColors.colorBlack_o,
//                       )),
//                 ),
//                 SizedBox(
//                   height: 10.00,
//                 ),
//                 Text(
//                   MyApp.bodyOperations_Incoming,
//                   style: TextStyle(color: MyColors.colorBlack_o),
//                 )
//               ],
//             ),
//             Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     print('printed');
//                   },
//                   child: Container(
//                       padding: EdgeInsets.all(15.00),
//                       decoration: BoxDecoration(
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(10.00)),
//                           color: MyColors.colorWhite,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 2,
//                                 offset: Offset(0, 1))
//                           ]),
//                       child: Icon(
//                         Icons.receipt,
//                         color: MyColors.colorBlack_o,
//                       )),
//                 ),
//                 SizedBox(
//                   height: 10.00,
//                 ),
//                 Text(
//                  MyApp.bodyOperations_Receipt,
//                   style: TextStyle(color: MyColors.colorBlack_o),
//                 )
//               ],
//             ),
//             Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     print('printed');
//                   },
//                   child: Container(
//                       padding: EdgeInsets.all(15.00),
//                       decoration: BoxDecoration(
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(10.00)),
//                           color: MyColors.colorWhite,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 2,
//                                 offset: Offset(0, 1))
//                           ]),
//                       child: Icon(
//                         Icons.read_more,
//                         color: MyColors.colorBlack_o,
//                       )),
//                 ),
//                 SizedBox(
//                   height: 10.00,
//                 ),
//                 Text(
//                  MyApp.bodyOperations_More,
//                   style: TextStyle(color: MyColors.colorBlack_o),
//                 )
//               ],
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OperationsContainer(
              iconDisplay: Icons.currency_exchange_outlined,
              iconText: MyApp.bodyOperations_change,
            ),
            OperationsContainer(
                iconDisplay: Icons.arrow_upward,
                iconText: MyApp.bodyOperations_Transfer),
            OperationsContainer(
                iconDisplay: Icons.arrow_downward,
                iconText: MyApp.bodyOperations_Incoming),
            OperationsContainer(
                iconDisplay: Icons.receipt,
                iconText: MyApp.bodyOperations_Receipt),
            OperationsContainer(
                iconDisplay: Icons.read_more,
                iconText: MyApp.bodyOperations_More),

            // Column(
            //   children: [
            //     InkWell(
            //       onTap: () {
            //         print('printed');
            //         setState(() {

            //         });
            //       },
            //       child: Container(
            //           padding: EdgeInsets.all(15.00),
            //           decoration: BoxDecoration(
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(10.00)),
            //               color: MyColors.colorWhite,
            //               boxShadow: [
            //                 BoxShadow(
            //                     color: Colors.grey.withOpacity(0.5),
            //                     spreadRadius: 1,
            //                     blurRadius: 2,
            //                     offset: Offset(0, 1))
            //               ]),
            //           child: Icon(
            //             Icons.currency_exchange_outlined,
            //             color: MyColors.colorBlack_o,
            //           )),
            //     ),
            //     SizedBox(
            //       height: 10.00,
            //     ),
            //     Text(
            //       MyApp.bodyOperations_change,
            //       style: TextStyle(color: MyColors.colorBlack_o),
            //     )
            //   ],
            // ),
            // Column(
            //   children: [
            //     InkWell(
            //       onTap: () {
            //         print('printed');
            //       },
            //       child: Container(
            //           padding: EdgeInsets.all(15.00),
            //           decoration: BoxDecoration(
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(10.00)),
            //               color: MyColors.colorWhite,
            //               boxShadow: [
            //                 BoxShadow(
            //                     color: Colors.grey.withOpacity(0.5),
            //                     spreadRadius: 1,
            //                     blurRadius: 2,
            //                     offset: Offset(0, 1))
            //               ]),
            //           child: Icon(
            //             Icons.arrow_upward,
            //             color: MyColors.colorBlack_o,
            //           )),
            //     ),
            //     SizedBox(
            //       height: 10.00,
            //     ),
            //     Text(
            //       MyApp.bodyOperations_Transfer,
            //       style: TextStyle(color: MyColors.colorBlack_o),
            //     )
            //   ],
            // ),
            // Column(
            //   children: [
            //     InkWell(
            //       onTap: () {
            //         print('printed');
            //       },
            //       child: Container(
            //           padding: EdgeInsets.all(15.00),
            //           decoration: BoxDecoration(
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(10.00)),
            //               color: MyColors.colorWhite,
            //               boxShadow: [
            //                 BoxShadow(
            //                     color: Colors.grey.withOpacity(0.5),
            //                     spreadRadius: 1,
            //                     blurRadius: 2,
            //                     offset: Offset(0, 1))
            //               ]),
            //           child: Icon(
            //             Icons.arrow_downward,
            //             color: MyColors.colorBlack_o,
            //           )),
            //     ),
            //     SizedBox(
            //       height: 10.00,
            //     ),
            //     Text(
            //       MyApp.bodyOperations_Incoming,
            //       style: TextStyle(color: MyColors.colorBlack_o),
            //     )
            //   ],
            // ),
            // Column(
            //   children: [
            //     InkWell(
            //       onTap: () {
            //         print('printed');
            //       },
            //       child: Container(
            //           padding: EdgeInsets.all(15.00),
            //           decoration: BoxDecoration(
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(10.00)),
            //               color: MyColors.colorWhite,
            //               boxShadow: [
            //                 BoxShadow(
            //                     color: Colors.grey.withOpacity(0.5),
            //                     spreadRadius: 1,
            //                     blurRadius: 2,
            //                     offset: Offset(0, 1))
            //               ]),
            //           child: Icon(
            //             Icons.receipt,
            //             color: MyColors.colorBlack_o,
            //           )),
            //     ),
            //     SizedBox(
            //       height: 10.00,
            //     ),
            //     Text(
            //       MyApp.bodyOperations_Receipt,
            //       style: TextStyle(color: MyColors.colorBlack_o),
            //     )
            //   ],
            // ),
            // Column(
            //   children: [
            //     InkWell(
            //       onTap: () {
            //         print('printed');
            //       },
            //       child: Container(
            //           padding: EdgeInsets.all(15.00),
            //           decoration: BoxDecoration(
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(10.00)),
            //               color: MyColors.colorWhite,
            //               boxShadow: [
            //                 BoxShadow(
            //                     color: Colors.grey.withOpacity(0.5),
            //                     spreadRadius: 1,
            //                     blurRadius: 2,
            //                     offset: Offset(0, 1))
            //               ]),
            //           child: Icon(
            //             Icons.read_more,
            //             color: MyColors.colorBlack_o,
            //           )),
            //     ),
            //     SizedBox(
            //       height: 10.00,
            //     ),
            //     Text(
            //       MyApp.bodyOperations_More,
            //       style: TextStyle(color: MyColors.colorBlack_o),
            //     )
            //   ],
            // ),
          ],
        )
      ],
    );
  }
}

class OperationsContainer extends StatelessWidget {
  final iconDisplay;
  final iconText;

  const OperationsContainer(
      {required this.iconDisplay, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            print('printed');
          },
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

// class OperationsContainer extends StatefulWidget {
//   final iconDisplay;
//   final iconText;

//   const OperationsContainer(
//       {required this.iconDisplay, required this.iconText});

//   @override
//   State<OperationsContainer> createState() => _OperationsContainerState();
// }

// class _OperationsContainerState extends State<OperationsContainer> {
//   late OperationsContainer setter;

//   @override
//   Widget build(BuildContext context) {
//     var iconDisplay = setter.iconDisplay;
//     var iconText = setter.iconText;

//     return Column(
//       children: [
//         InkWell(
//           onTap: () {
//             print('printed');
//           },
//           child: Container(
//               padding: EdgeInsets.all(15.00),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(10.00)),
//                   color: MyColors.colorWhite,
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 1,
//                         blurRadius: 2,
//                         offset: Offset(0, 1))
//                   ]),
//               child: Icon(
//                 iconDisplay,
//                 color: MyColors.colorBlack_o,
//               )),
//         ),
//         SizedBox(
//           height: 10.00,
//         ),
//         Text(
//           iconText,
//           style: TextStyle(color: MyColors.colorBlack_o),
//         )
//       ],
//     );
//   }
// }

class BodyTransactions extends StatefulWidget {
  const BodyTransactions({super.key});

  @override
  State<BodyTransactions> createState() => _BodyTransactionsState();
}

class _BodyTransactionsState extends State<BodyTransactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              MyApp.bodyTransactions,
              style: TextStyle(color: MyColors.colorBlack),
            ),
            InkWell(
                onTap: () {},
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: MyColors.colorBlack_o,
                )),
          ],
        ),
        Column(
          children: [
            TransactionsAlt(
              myTransText: MyApp.bodyTransactionsIncome,
              myTransIcon: Icons.home,
              myTransData: '% + 6,500.00',
              myTransColor: MyColors.colorGreen,
            ),
            SizedBox(
              height: 10.00,
            ),
            TransactionsAlt(
              myTransText: MyApp.bodyTransactionsShopping,
              myTransIcon: Icons.home,
              myTransData: '% - 300,49',
              myTransColor: MyColors.colorRed,
            ),
            SizedBox(
              height: 10.00,
            ),
            TransactionsAlt(
              myTransText: MyApp.bodyTransactionsPayment,
              myTransIcon: Icons.home,
              myTransData: '% + 1,280.00',
              myTransColor: MyColors.colorGreen,
            ),
            SizedBox(
              height: 10.00,
            ),
          ],
        ),
      ],
    );
  }
}

class TransactionsAlt extends StatefulWidget {
  final myTransText;
  final myTransIcon;
  final myTransData;
  final myTransColor;
  TransactionsAlt(
      {required this.myTransText,
      required this.myTransIcon,
      required this.myTransData,
      required this.myTransColor});

  @override
  State<TransactionsAlt> createState() => _TransactionsAltState(
      myTransAltText: myTransText,
      myTransAltIcon: myTransIcon,
      myTransAltData: myTransData,
      myTransAltColor: myTransColor);
}

class _TransactionsAltState extends State<TransactionsAlt> {
  final myTransAltText;
  final myTransAltIcon;
  final myTransAltData;
  final myTransAltColor;

  _TransactionsAltState(
      {required this.myTransAltText,
      required this.myTransAltIcon,
      required this.myTransAltData,
      required this.myTransAltColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.00))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(10.00),
                    decoration: BoxDecoration(
                        color: MyColors.iconBck,
                        borderRadius: BorderRadius.all(Radius.circular(4.00))),
                    child: Icon(
                      myTransAltIcon,
                      color: MyColors.icon,
                    )),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myTransAltText,
                      style: TextStyle(color: MyColors.colorBlack),
                    ),
                    Text(
                      '14 July 2021',
                      style: TextStyle(color: MyColors.colorBlack_o),
                    )
                  ],
                ),
              ],
            ),
            Text(
              myTransAltData,
              style: TextStyle(
                  color: myTransAltColor, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
