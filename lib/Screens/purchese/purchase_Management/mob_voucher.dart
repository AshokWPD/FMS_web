// import 'package:flutter/material.dart';
// import 'package:fms_web/constants/primary.dart';
// import 'package:group_radio_button/group_radio_button.dart';

// class mob_voucher extends StatefulWidget {
//   const mob_voucher({Key? key});

//   @override
//   _mob_voucherState createState() => _mob_voucherState();
// }


// class _mob_voucherState extends State<mob_voucher> {
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
//         var width = MediaQuery.of(context).size.width;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
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
//           ),
//         ),
//       ),
//     );
//   }
// }