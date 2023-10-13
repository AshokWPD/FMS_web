// import 'package:flutter/material.dart';
// import 'package:fms_web/constants/primary.dart';

// class tab_request extends StatefulWidget {
//   const tab_request({super.key});

//   @override
//   State<tab_request> createState() => _tab_requestState();
// }

// class _tab_requestState extends State<tab_request> {

//         String selectedcredit="credit"; 

//   List<String> credittype =[
//   "Weekly" ,
//   "Monthly",
//    "Quarterly",
//     "Half-yearly"
// ];

 
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           child:  Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//                Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                        StyledTextFormField(labletxt: "Ticket Number", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Invoice Number", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Credit Number", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Contact Person Name", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.28,),

//                         // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
        
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         StyledTextFormField(labletxt: "Type of Material", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Price", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Amount Paid", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Amount Outstanding", fieldwidth: width*0.28,),
//                         my_radio(radiolist: credittype, selctvalue: selectedcredit, radiowidth: width*0.28,),
                        
        
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               ElevatedButton(onPressed: (){}, child: const Text("Submit"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }