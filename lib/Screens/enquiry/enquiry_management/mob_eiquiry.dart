// import 'package:flutter/material.dart';
// import 'package:fms_web/constants/primary.dart';

// class mob_order extends StatefulWidget {
//   const mob_order({super.key});

//   @override
//   State<mob_order> createState() => _mob_orderState();
// }

// class _mob_orderState extends State<mob_order> {
// TextEditingController meterialchoose =TextEditingController();
//     String selectedFrequency="Frequency"; // Change the type to nullable String


//   List<String> meterialType =[
//   "60mm",
//   "40mm",
//   "20mm",
//   "12mm",
//   "6mm",
//   "Dust",
//   "M -Sand",
//   "P -Sand"
// ];

// List<String> Frequencytype =[
//  "One time",
// "Weekly",
// "Monthly",
// "Quarterly",
// "Half-yearly",
// "Annually"
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
//                        StyledTextFormField(labletxt: "Contract Number", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Contact person", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.28,),
//                            mydropDown(txtcontroller: meterialchoose, dropitem: meterialType, hinttxt: "Type of Material", dropwidth: 0.9,),
                      
//                         // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
        
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "Start Date", fieldwidth: width*0.28,),
//                         StyledTextFormField(labletxt: "End Date", fieldwidth: width*0.28,),
//                         my_vertical_radio(radiolist: Frequencytype, selctvalue: selectedFrequency, radiowidth: width*0.25)
                      
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