import 'package:flutter/material.dart';
import 'package:fms_web/Screens/credit/credit_page.dart';
import 'package:fms_web/Screens/enquiry/enquiry_page.dart';
import 'package:fms_web/Screens/purchese/purchese_page.dart';
import 'package:fms_web/Screens/sales/sales_page.dart';
import 'package:fms_web/Screens/ship/ship_page.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:intl/intl.dart';
import 'package:one_clock/one_clock.dart';

class tab_dash extends StatefulWidget {
  const tab_dash({super.key});

  @override
  State<tab_dash> createState() => _tab_dashState();
}

class _tab_dashState extends State<tab_dash> {
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
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: pribackcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 70,left: 40),
                  child: Container(
                    width: 177,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pricolor,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "  $formattedDate  & ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        DigitalClock(
                          showSeconds: true,
                          isLive: true,
                          textScaleFactor: 0.69,
                          digitalClockTextColor: Colors.white,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          datetime: DateTime.now(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
               // Add spacing between top container and menu items
              Container(
                height: height,
                width: width,
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
                            color: pricolor,
                          ),
                          child: Center(
                            child: Text(
                              mainMenu[index],
                              style: TextStyle(
                                color: Colors.white,
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
            ],
          ),
        ),
      ),
    );
  }
}