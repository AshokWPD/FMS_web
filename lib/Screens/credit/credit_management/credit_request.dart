import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';

class credit_request extends StatefulWidget {
  const credit_request({super.key});

  @override
  State<credit_request> createState() => _credit_requestState();
}

class _credit_requestState extends State<credit_request> {
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
TextEditingController _amount_paid =TextEditingController();
TextEditingController _amountOutstatding =TextEditingController();

        String selectedcredit="credit"; 

  List<String> credittype =[
  "Weekly" ,
  "Monthly",
   "Quarterly",
    "Half-yearly"
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
                          StyledTextFormField(labletxt: "Invoice Number", fieldwidth: width*0.9, fieldcontroller: _InvoiceNumber,),
                          StyledTextFormField(labletxt: "Credit Number", fieldwidth: width*0.9, fieldcontroller: _creditNumber,),
                          StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.9, fieldcontroller: _companyName,),
                          StyledTextFormField(labletxt: "Contact Person Name", fieldwidth: width*0.9, fieldcontroller: _contactPerson,),
                          StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.9, fieldcontroller: _contactNumber,),
                          StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.9, fieldcontroller: _vehileNumber,),
                          StyledTextFormField(labletxt: "Type of Material", fieldwidth: width*0.9, fieldcontroller: _ticketNumber,),
                          StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.9, fieldcontroller: _quantity,),
                          StyledTextFormField(labletxt: "Price", fieldwidth: width*0.9, fieldcontroller: _price,),
                          StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.9, fieldcontroller: _amount,),
                          StyledTextFormField(labletxt: "Amount Paid", fieldwidth: width*0.9, fieldcontroller: _amount_paid,),
                          StyledTextFormField(labletxt: "Amount Outstanding", fieldwidth: width*0.9, fieldcontroller: _amountOutstatding,),
                          my_radio(radiolist: credittype, selctvalue: selectedcredit, radiowidth: width*0.9,),
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
                          StyledTextFormField(labletxt: "Invoice Number", fieldwidth: width*0.28, fieldcontroller: _InvoiceNumber,),
                          StyledTextFormField(labletxt: "Credit Number", fieldwidth: width*0.28, fieldcontroller: _creditNumber,),
                          StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.28, fieldcontroller: _companyName,),
                          StyledTextFormField(labletxt: "Contact Person Name", fieldwidth: width*0.28, fieldcontroller: _contactPerson,),
                          StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.28, fieldcontroller: _contactNumber,),
                          StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.28, fieldcontroller: _vehileNumber,),
        
                          // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
          
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StyledTextFormField(labletxt: "Type of Material", fieldwidth: width*0.28, fieldcontroller: _ticketNumber,),
                          StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.28, fieldcontroller: _quantity,),
                          StyledTextFormField(labletxt: "Price", fieldwidth: width*0.28, fieldcontroller: _price,),
                          StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.28, fieldcontroller: _amount,),
                          StyledTextFormField(labletxt: "Amount Paid", fieldwidth: width*0.28, fieldcontroller: _amount_paid,),
                          StyledTextFormField(labletxt: "Amount Outstanding", fieldwidth: width*0.28, fieldcontroller: _amountOutstatding,),
                          my_radio(radiolist: credittype, selctvalue: selectedcredit, radiowidth: width*0.28,),
                          
          
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