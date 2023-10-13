// import 'package:flutter/material.dart';
// import 'package:fms_web/constants/primary.dart';
// import 'package:group_radio_button/group_radio_button.dart';

// class des_voucher extends StatefulWidget {
//   const des_voucher({Key? key});

//   @override
//   _des_voucherState createState() => _des_voucherState();
// }


// class _des_voucherState extends State<des_voucher> {
//     String selectedpay="pay"; // Change the type to nullable String

//   // void handleRadioValueChange(String? value) { // Change the type to nullable String
//   //   setState(() {
//   //     selectedpay = value;
//   //   });
//   // }

// TextEditingController companychoose =TextEditingController();
// TextEditingController personchoose =TextEditingController();


// List<String> company =[
//   "APPLE",
//   "MOTO",
//   "VIVO",
//   "POCO",
//   "IQ"
// ];

// List<String> buyperson =[
//   "Ashok",
//   "Arun",
//   "guru",
//   "vickay",
//   "varun"
// ];

// List<String> payment =[
//   "Cash",
//   "card",
//   "UPI",
//   "Credit",
// ];

//   @override
//   Widget build(BuildContext context) {
//      final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     bool isDesktop = MediaQuery.of(context).size.width >= 1100;
//     bool istablet = MediaQuery.of(context).size.width >= 800;
//     bool ismobile = MediaQuery.of(context).size.width < 800;    return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SingleChildScrollView(
//           child:ismobile?Container(
//             width: width,
//             child: Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                  StyledTextFormField(labletxt: "Seller Company Name", fieldwidth: width*0.9),
//                   StyledTextFormField(labletxt: "Seller Company Phone", fieldwidth: width*0.9),
//                   StyledTextFormField(labletxt: "Seller Company Address", fieldwidth: width*0.9),
//                   StyledTextFormField(labletxt: "Seller Company GST", fieldwidth: width*0.9),
//                   ElevatedButton(onPressed: (){}, child: Text("Save For Later")),
//                     SizedBox(height: 10,),
//                    mydropDown(txtcontroller: companychoose, dropitem: company, hinttxt: "Company", dropwidth: width*0.845,),
//                   StyledTextFormField(labletxt: "Voucher Date", fieldwidth: width*0.9),
//                   StyledTextFormField(labletxt: "Voucher Number", fieldwidth: width*0.9),
//                   StyledTextFormField(labletxt: "Particulars / Description", fieldwidth: width*0.9),
//                   StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.9),
//                   my_radio(radiolist: payment, selctvalue: selectedpay, radiowidth: width*0.9),
//                   StyledTextFormField(labletxt: "Authorised Person", fieldwidth: width*0.9),
//                    mydropDown(txtcontroller: personchoose, dropitem: buyperson, hinttxt: "Receiver Person", dropwidth:width*0.845,),
//                   StyledTextFormField(labletxt: "RP Contact Number", fieldwidth: width*0.9),
//                   ElevatedButton(onPressed: (){}, child: Text("Submit")),
//                   SizedBox(
//                     height: 80,
//                   )
          
//                 ],
//               ),
//             ),
//           ) :Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                          StyledTextFormField(labletxt: "Seller Company Name", fieldwidth: width*0.28),
//                           StyledTextFormField(labletxt: "Seller Company Phone", fieldwidth: width*0.28),
//                           StyledTextFormField(labletxt: "Seller Company Address", fieldwidth: width*0.28),
//                           StyledTextFormField(labletxt: "Seller Company GST", fieldwidth: width*0.28),
//                           ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
          
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(height: 10,),
//                            mydropDown(txtcontroller: companychoose, dropitem: company, hinttxt: "Company", dropwidth: width*0.26,),
//                           StyledTextFormField(labletxt: "Voucher Date", fieldwidth: width*0.28),
//                           StyledTextFormField(labletxt: "Voucher Number", fieldwidth: width*0.28),
//                           StyledTextFormField(labletxt: "Particulars / Description", fieldwidth: width*0.28),
//                           StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.28),
//                           my_radio(radiolist: payment, selctvalue: selectedpay, radiowidth: width*0.28,),
//                           StyledTextFormField(labletxt: "Authorised Person", fieldwidth: width*0.28),
//                            mydropDown(txtcontroller: personchoose, dropitem: buyperson, hinttxt: "Receiver Person", dropwidth: width*0.26,),
//                           StyledTextFormField(labletxt: "RP Contact Number", fieldwidth: width*0.28),
//                           ElevatedButton(onPressed: (){}, child: Text("Submit"))
                          
          
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }