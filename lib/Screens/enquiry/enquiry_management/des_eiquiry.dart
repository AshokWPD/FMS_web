// import 'package:flutter/material.dart';
// import 'package:fms_web/constants/primary.dart';

// class des_order extends StatefulWidget {
//   const des_order({super.key});

//   @override
//   State<des_order> createState() => _des_orderState();
// }

// class _des_orderState extends State<des_order> {

// TextEditingController _ContractNumber =TextEditingController();
// TextEditingController _companyName =TextEditingController();
// TextEditingController _contactPerson =TextEditingController();
// TextEditingController _contactNumber =TextEditingController();
// TextEditingController _quantity =TextEditingController();
// TextEditingController _startdate =TextEditingController();
// TextEditingController _enddate =TextEditingController();





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
//      final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     bool isDesktop = MediaQuery.of(context).size.width >= 1100;
//     bool istablet = MediaQuery.of(context).size.width >= 800;
//     bool ismobile = MediaQuery.of(context).size.width < 800; 
//         return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body:ismobile?Container(
//             width: width,
//             child: Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                    StyledTextFormField(labletxt: "Contract Number", fieldwidth: width*0.9, fieldcontroller: _ContractNumber,),
//                         StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.9, fieldcontroller: _companyName,),
//                         StyledTextFormField(labletxt: "Contact person", fieldwidth: width*0.9, fieldcontroller: _contactPerson,),
//                         StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.9, fieldcontroller: _contactNumber,),
//                            mydropDown(txtcontroller: meterialchoose, dropitem: meterialType, hinttxt: "Type of Material", dropwidth: 0.845,),
//                    StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.9, fieldcontroller: _quantity,),
//                         StyledTextFormField(labletxt: "Start Date", fieldwidth: width*0.9, fieldcontroller: _startdate,),
//                         StyledTextFormField(labletxt: "End Date", fieldwidth: width*0.9, fieldcontroller: _enddate,),
//                         my_vertical_radio(radiolist: Frequencytype, selctvalue: selectedFrequency, radiowidth: width*0.845),
                      
//                   SizedBox(
//                     height: 80,
//                   )
          
//                 ],
//               ),
//             ),
//           ) : Container(
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
//                        StyledTextFormField(labletxt: "Contract Number", fieldwidth: width*0.28, fieldcontroller: _ContractNumber,),
//                         StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.28, fieldcontroller: _companyName,),
//                         StyledTextFormField(labletxt: "Contact person", fieldwidth: width*0.28, fieldcontroller: _contactPerson,),
//                         StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.28, fieldcontroller: _contactNumber,),
//                            mydropDown(txtcontroller: meterialchoose, dropitem: meterialType, hinttxt: "Type of Material", dropwidth: 0.9,),
                      
//                         // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
        
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.28, fieldcontroller: _quantity,),
//                         StyledTextFormField(labletxt: "Start Date", fieldwidth: width*0.28, fieldcontroller: _startdate,),
//                         StyledTextFormField(labletxt: "End Date", fieldwidth: width*0.28, fieldcontroller: _enddate,),
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