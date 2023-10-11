import 'package:flutter/material.dart';
import 'package:fms_web/Screens/credit/credit_page.dart';
import 'package:fms_web/Screens/enquiry/enquiry_page.dart';
import 'package:fms_web/Screens/purchese/purchese_page.dart';
import 'package:fms_web/Screens/sales/sales_page.dart';
import 'package:fms_web/Screens/ship/ship_page.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:intl/intl.dart';
import 'package:one_clock/one_clock.dart';

class des_dash extends StatefulWidget {
  const des_dash({super.key});

  @override
  State<des_dash> createState() => _des_dashState();
}

class _des_dashState extends State<des_dash> {
String formattedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());

final List<String> mainMenu=[
  "Purchase History",
  "Sales History",
  "Shipment History",
  "Credit History",
  "Enquiry History"
];


List<WidgetBuilder> onpages=[
    (context)=> purchese_page(),
    (context)=> sales_page(),
    (context)=> ship_page(),
    (context)=> Credit_page(),
    (context)=> enquiry_page(),
  ];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: pribackcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 70,left: 50),
                  child: Container(
                    height: 25,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [boxshadow],
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        
                        Expanded(
                          child: Center(
                            child: Row(
                              
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Text(
                                  "Chennai",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              
                                Text(
                                  "$formattedDate",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: DigitalClock(
                            showSeconds: true,
                            isLive: true,
                            textScaleFactor: 0.69,
                            digitalClockTextColor: Colors.black,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            datetime: DateTime.now(),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
               // Add spacing between top container and menu items
              Center(
                child: Container(
                     height: height*0.8,
                  width: width*0.65,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Set cross-axis count to 2
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(65), // Adjust spacing around items
                        child: InkWell(
                          onTap: () {
                     Navigator.push(context,MaterialPageRoute(builder: onpages[index]) );

                        },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                                color: Colors.white,

                            boxShadow: [boxshadow]
                            ),
                            child: Center(
                              child: Text(
                                mainMenu[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: mainMenu.length,
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}