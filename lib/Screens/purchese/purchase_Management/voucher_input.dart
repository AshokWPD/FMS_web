import 'package:flutter/material.dart';
import 'package:fms_web/constants/primary.dart';
import 'package:group_radio_button/group_radio_button.dart';

class perchese_voucher extends StatefulWidget {
  const perchese_voucher({Key? key});

  @override
  _perchese_voucherState createState() => _perchese_voucherState();
}


class _perchese_voucherState extends State<perchese_voucher> {
    String selectedpay="pay"; // Change the type to nullable String

  // void handleRadioValueChange(String? value) { // Change the type to nullable String
  //   setState(() {
  //     selectedpay = value;
  //   });
  // }
TextEditingController _sellerCompanyName =TextEditingController();
TextEditingController _sellerCompanyPhone =TextEditingController();
TextEditingController _sellerCompanyAddress =TextEditingController();
TextEditingController _sellerGST =TextEditingController();
TextEditingController _voucherDate =TextEditingController();
TextEditingController _voucherNumber =TextEditingController();
TextEditingController _particulars =TextEditingController();
TextEditingController _amount =TextEditingController();
TextEditingController _AuthPerson =TextEditingController();
TextEditingController _RPContactNumber =TextEditingController();





TextEditingController companychoose =TextEditingController();
TextEditingController personchoose =TextEditingController();


List<String> company =[
  "APPLE",
  "MOTO",
  "VIVO",
  "POCO",
  "IQ"
];

List<String> buyperson =[
  "Ashok",
  "Arun",
  "guru",
  "vickay",
  "varun"
];

List<String> payment =[
  "Cash",
  "card",
  "UPI",
  "Credit",
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
        body: SingleChildScrollView(
          child:ismobile?Container(
            width: width,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 StyledTextFormField(labletxt: "Seller Company Name", fieldwidth: width*0.9, fieldcontroller: _sellerCompanyName,),
                  StyledTextFormField(labletxt: "Seller Company Phone", fieldwidth: width*0.9, fieldcontroller: _sellerCompanyPhone,),
                  StyledTextFormField(labletxt: "Seller Company Address", fieldwidth: width*0.9, fieldcontroller: _sellerCompanyAddress,),
                  StyledTextFormField(labletxt: "Seller Company GST", fieldwidth: width*0.9, fieldcontroller: _sellerGST,),
                  ElevatedButton(onPressed: (){}, child: Text("Save For Later")),
                    SizedBox(height: 10,),
                   mydropDown(txtcontroller: companychoose, dropitem: company, hinttxt: "Company", dropwidth: width*0.845,),
                  StyledTextFormField(labletxt: "Voucher Date", fieldwidth: width*0.9, fieldcontroller: _voucherDate,),
                  StyledTextFormField(labletxt: "Voucher Number", fieldwidth: width*0.9, fieldcontroller: _voucherNumber,),
                  StyledTextFormField(labletxt: "Particulars / Description", fieldwidth: width*0.9, fieldcontroller: _particulars,),
                  StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.9, fieldcontroller: _amount,),
                  my_radio(radiolist: payment, selctvalue: selectedpay, radiowidth: width*0.9),
                  StyledTextFormField(labletxt: "Authorised Person", fieldwidth: width*0.9, fieldcontroller: _AuthPerson,),
                   mydropDown(txtcontroller: personchoose, dropitem: buyperson, hinttxt: "Receiver Person", dropwidth:width*0.845,),
                  StyledTextFormField(labletxt: "RP Contact Number", fieldwidth: width*0.9, fieldcontroller: _RPContactNumber,),
                  ElevatedButton(onPressed: (){}, child: Text("Submit")),
                  SizedBox(
                    height: 80,
                  )
          
                ],
              ),
            ),
          ) :Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         StyledTextFormField(labletxt: "Seller Company Name", fieldwidth: width*0.28, fieldcontroller: _sellerCompanyName,),
                          StyledTextFormField(labletxt: "Seller Company Phone", fieldwidth: width*0.28, fieldcontroller: _sellerCompanyName,),
                          StyledTextFormField(labletxt: "Seller Company Address", fieldwidth: width*0.28, fieldcontroller: _sellerCompanyAddress,),
                          StyledTextFormField(labletxt: "Seller Company GST", fieldwidth: width*0.28, fieldcontroller: _sellerGST,),
                          ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
          
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                           mydropDown(txtcontroller: companychoose, dropitem: company, hinttxt: "Company", dropwidth: width*0.26,),
                          StyledTextFormField(labletxt: "Voucher Date", fieldwidth: width*0.28, fieldcontroller: _voucherDate,),
                          StyledTextFormField(labletxt: "Voucher Number", fieldwidth: width*0.28, fieldcontroller: _voucherNumber,),
                          StyledTextFormField(labletxt: "Particulars / Description", fieldwidth: width*0.28, fieldcontroller: _particulars,),
                          StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.28, fieldcontroller: _amount,),
                          my_radio(radiolist: payment, selctvalue: selectedpay, radiowidth: width*0.28,),
                          StyledTextFormField(labletxt: "Authorised Person", fieldwidth: width*0.28, fieldcontroller: _AuthPerson,),
                           mydropDown(txtcontroller: personchoose, dropitem: buyperson, hinttxt: "Receiver Person", dropwidth: width*0.26,),
                          StyledTextFormField(labletxt: "RP Contact Number", fieldwidth: width*0.28, fieldcontroller: _RPContactNumber,),
                          ElevatedButton(onPressed: (){}, child: Text("Submit"))
                          
          
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}