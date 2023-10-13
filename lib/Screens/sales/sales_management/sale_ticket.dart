import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class sale_ticket extends StatefulWidget {
  const sale_ticket({super.key});

  @override
  State<sale_ticket> createState() => _sale_ticketState();
}

class _sale_ticketState extends State<sale_ticket> {

TextEditingController _ticketNumber =TextEditingController();
TextEditingController _InvoiceNumber =TextEditingController();
TextEditingController _creditNumber =TextEditingController();
TextEditingController _companyName =TextEditingController();
TextEditingController _contactPerson =TextEditingController();
TextEditingController _contactNumber =TextEditingController();
TextEditingController _vehileNumber =TextEditingController();
TextEditingController _quantity =TextEditingController();
TextEditingController _price =TextEditingController();
TextEditingController _amount =TextEditingController();
TextEditingController _startdate =TextEditingController();
TextEditingController _enddate =TextEditingController();
TextEditingController _deliveryName =TextEditingController();
TextEditingController _deliveryLocation =TextEditingController();



  String selectedquentity="Quntity";
    String selectedpay="pay"; 
        String selecteddelivery="delivery"; 

    
List<String> QuantityList =[
  "Unit",
  "Ton",
];

List<String> payment =[
  "Cash",
  "card",
  "UPI",
  "Credit",
];

List<String> deliveytype =[
  "By Self",
  "By Company",
  
];

  @override
  Widget build(BuildContext context) {
final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isDesktop = MediaQuery.of(context).size.width >= 1100;
    bool istablet = MediaQuery.of(context).size.width >= 800;
    bool ismobile = MediaQuery.of(context).size.width < 800; 
              return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SingleChildScrollView(
          child: ismobile?Container(
              width: width,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                          StyledTextFormField(labletxt: "Ticket Number", fieldwidth: width*0.9, fieldcontroller: _ticketNumber,),
                          StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.9, fieldcontroller: _companyName,),
                          StyledTextFormField(labletxt: "Contact Person Name", fieldwidth: width*0.9, fieldcontroller: _contactPerson,),
                          StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.9, fieldcontroller: _contactNumber,),
                          StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.9, fieldcontroller: _vehileNumber,),
                          StyledTextFormField(labletxt: "Type of Material", fieldwidth: width*0.9, fieldcontroller: _InvoiceNumber,),
                          Row( mainAxisAlignment: MainAxisAlignment.center,
                            children: [StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.5, fieldcontroller: _InvoiceNumber,),
                          my_radio(radiolist: QuantityList, selctvalue: selectedquentity, radiowidth:width* 0.4,),
                            ],
                          ),
                          StyledTextFormField(labletxt: "Price", fieldwidth: width*0.9, fieldcontroller: _price,),
                          StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.9, fieldcontroller: _amount,),
                          my_radio(radiolist: payment, selctvalue: selectedpay, radiowidth: width*0.9,),
                          StyledTextFormField(labletxt: "Start Date & Time", fieldwidth: width*0.9, fieldcontroller: _startdate,),
                          StyledTextFormField(labletxt: "End Date & Time", fieldwidth: width*0.9, fieldcontroller: _enddate,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              StyledTextFormField(labletxt: "Delivery Type", fieldwidth: width*0.5, fieldcontroller: _deliveryName,),
                             my_radio(radiolist: deliveytype, selctvalue: selecteddelivery, radiowidth:width* 0.4,),
        
                            ],
                          ),
                          StyledTextFormField(labletxt: "Delivery Location", fieldwidth: width*0.9, fieldcontroller: _deliveryLocation,),
                ElevatedButton(onPressed: (){}, child: const Text("Submit")),
                          
                    SizedBox(
                      height: 80,
                    )
            
                  ],
                ),
              ),
            ) : Container(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         StyledTextFormField(labletxt: "Ticket Number", fieldwidth: width*0.28, fieldcontroller: _ticketNumber,),
                          StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.28, fieldcontroller: _companyName,),
                          StyledTextFormField(labletxt: "Contact Person Name", fieldwidth: width*0.28, fieldcontroller: _contactPerson,),
                          StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.28, fieldcontroller: _contactNumber,),
                          StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.28, fieldcontroller: _vehileNumber,),
                          StyledTextFormField(labletxt: "Type of Material", fieldwidth: width*0.28, fieldcontroller: _InvoiceNumber,),
                          Row( mainAxisAlignment: MainAxisAlignment.center,
                            children: [StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.18, fieldcontroller: _InvoiceNumber,),
                          my_radio(radiolist: QuantityList, selctvalue: selectedquentity, radiowidth:width* 0.1,),
                            ],
                          ),
                          // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
          
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StyledTextFormField(labletxt: "Price", fieldwidth: width*0.28, fieldcontroller: _price,),
                          StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.28, fieldcontroller: _amount,),
                          my_radio(radiolist: payment, selctvalue: selectedpay, radiowidth: width*0.28,),
                          StyledTextFormField(labletxt: "Start Date & Time", fieldwidth: width*0.28, fieldcontroller: _startdate,),
                          StyledTextFormField(labletxt: "End Date & Time", fieldwidth: width*0.28, fieldcontroller: _enddate,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              StyledTextFormField(labletxt: "Delivery Type", fieldwidth: width*0.15, fieldcontroller: _deliveryName,),
                             my_radio(radiolist: deliveytype, selctvalue: selecteddelivery, radiowidth:width* 0.13,),
        
                            ],
                          ),
                          StyledTextFormField(labletxt: "Delivery Location", fieldwidth: width*0.28, fieldcontroller: _deliveryLocation,),
                          // ElevatedButton(onPressed: (){}, child: Text("Submit"))
                          
          
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(onPressed: (){}, child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}