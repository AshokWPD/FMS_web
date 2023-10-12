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
        var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                         StyledTextFormField(labletxt: "Seller Company Name", fieldwidth: width*0.28),
                          StyledTextFormField(labletxt: "Seller Company Phone", fieldwidth: width*0.28),
                          StyledTextFormField(labletxt: "Seller Company Address", fieldwidth: width*0.28),
                          StyledTextFormField(labletxt: "Seller Company GST", fieldwidth: width*0.28),
                          ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
          
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                           mydropDown(txtcontroller: companychoose, dropitem: company, hinttxt: "Company"),
                          StyledTextFormField(labletxt: "Voucher Date", fieldwidth: width*0.28),
                          StyledTextFormField(labletxt: "Voucher Number", fieldwidth: width*0.28),
                          StyledTextFormField(labletxt: "Particulars / Description", fieldwidth: width*0.28),
                          StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.28),
                          my_radio(radiolist: payment, selctvalue: selectedpay, radiowidth: width*0.28,),
                          StyledTextFormField(labletxt: "Authorised Person", fieldwidth: width*0.28),
                           mydropDown(txtcontroller: personchoose, dropitem: buyperson, hinttxt: "Receiver Person"),
                          StyledTextFormField(labletxt: "RP Contact Number", fieldwidth: width*0.28),
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

  // Widget myradibutton() {
  //       var width = MediaQuery.of(context).size.width;

  //   return  Container(
  //     width: width*0.28,
  //     height: 50,
  //     child:RadioGroup<String>.builder(
  //       direction: Axis.horizontal,
  //       groupValue: selectedpay,
  //       horizontalAlignment: MainAxisAlignment.spaceAround,
  //       onChanged: (value) => setState(() {
  //         selectedpay = value ?? '';
  //       }),
  //       items: payment,
  //       textStyle: const TextStyle(
  //         fontSize: 15,
  //         color: Colors.blue,
  //       ),
  //       itemBuilder: (item) => RadioButtonBuilder(
  //         item,
  //       ),
  //     ),
  //       );
    
    
  // }
}
