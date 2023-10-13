// import 'package:flutter/material.dart';
// import 'package:fms_web/constants/primary.dart';

// class mob_ticket extends StatefulWidget {
//   const mob_ticket({super.key});

//   @override
//   State<mob_ticket> createState() => _mob_ticketState();
// }

// class _mob_ticketState extends State<mob_ticket> {
//   String selectedquentity="Quntity";
//     String selectedpay="pay"; 
//         String selecteddelivery="delivery"; 

    
// List<String> QuantityList =[
//   "Unit",
//   "Ton",
// ];

// List<String> payment =[
//   "Cash",
//   "card",
//   "UPI",
//   "Credit",
// ];

// List<String> deliveytype =[
//   "By Self",
//   "By Company",
  
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
//                         StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Contact Person Name", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Type of Material", fieldwidth: width*0.28,),
//                         Row( mainAxisAlignment: MainAxisAlignment.center,
//                           children: [StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.18,),
//                         my_radio(radiolist: QuantityList, selctvalue: selectedquentity, radiowidth:width* 0.1,),
//                           ],
//                         ),
//                         // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
        
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         StyledTextFormField(labletxt: "Price", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.28,),
//                         my_radio(radiolist: payment, selctvalue: selectedpay, radiowidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Start Date & Time", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "End Date & Time", fieldwidth: width*0.28,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             StyledTextFormField(labletxt: "Delivery Type", fieldwidth: width*0.15,),
//                            my_radio(radiolist: deliveytype, selctvalue: selecteddelivery, radiowidth:width* 0.13,),

//                           ],
//                         ),
//                         StyledTextFormField(labletxt: "Delivery Location", fieldwidth: width*0.28,),
//                         // ElevatedButton(onPressed: (){}, child: Text("Submit"))
                        
        
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