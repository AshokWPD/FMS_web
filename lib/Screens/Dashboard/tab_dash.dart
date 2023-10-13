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
    (context)=> purchese_page(pageNo: 1,),
    (context)=> sales_page(pageNo: 1,),
    (context)=> ship_page(),
    (context)=> Credit_page(pageNo: 1,),
    (context)=> enquiry_page(pageNo: 1,),
  
  ];

 @override
  void initState() {
LocationFetch.fetchLocationData(context).then((result) {
      if (result != null) {
      } else {
        // Handle the case where the result is null
      }
    });    // TODO: implement initState
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
                  padding: const EdgeInsets.only(top: 70,left: 40),
                  child: Container(
                    height: 25,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [boxshadow]
                    ),
                    child: Row(
                      children: [
                      
                        Expanded(
                          child: Center(
                            child: Row(
                              
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Text(
                                  "$placeName",
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
              Container(
                height: height*0.9,
                width: width*0.9,
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
                            // color: pricolor,
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
            ],
          ),
        ),
      ),
    );
  }
}