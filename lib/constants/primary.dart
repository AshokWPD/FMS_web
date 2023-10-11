
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:location/location.dart';
  import 'package:http/http.dart'as http;
  
var pribackcolor = Color.fromARGB(255, 234, 195, 249);

var pricolor=Color.fromARGB(255, 186, 1, 243);
 
var textfont=16;

var titlebold = 18;

String? placeName;

var boxshadow =BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 7, // Spread radius of the shadow
                    blurRadius: 7, // Blur radius of the shadow
                    offset: const Offset(0, 3), // Offset of the shadow (horizontal, vertical)
                  );

var loadinganimat=LoadingAnimationWidget.newtonCradle(color: pricolor, size: 150);
var mobloadinganimat=LoadingAnimationWidget.newtonCradle(color: pricolor, size: 85);

Future<void> fetchAndPrintLocationData() async {
  final location = Location();
  try {
    final LocationData locationData = await location.getLocation();
    final double? latitude = locationData.latitude;
    final double? longitude = locationData.longitude;

    final response = await http.get(Uri.parse(
        'http://api.openweathermap.org/geo/1.0/reverse?lat=$latitude&lon=$longitude&limit=1&appid=6f722ea220333c8a0ca6dc586510c3a5'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      if (data.isNotEmpty) {
        final Map<String, dynamic> placeData = data[0];
         placeName = placeData['name'];
        print('Current Place Name: $placeName');
        print("$latitude  $longitude");
        
      }
    }
  } catch (e) {
    print('Error fetching location and data: $e');
  }
}

Future<String?> fetchLocationData() async {
  final location = Location();
  try {
    final LocationData locationData = await location.getLocation();
    final double? latitude = locationData.latitude;
    final double? longitude = locationData.longitude;

    final response = await http.get(Uri.parse(
        'http://api.opermap.org/geo/tude&lon=$longitude&limit=1&appid=6f722ea22'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      if (data.isNotEmpty) {
        final Map<String, dynamic> placeData = data[0];
        final String placeName = placeData['name'];
        print('Current Place Name: $placeName');
        print("$latitude  $longitude");
        return placeName; // Return the place name
      }
    }
  } catch (e) {
    print('Error fetching location and data: $e');
  }

  return null; // Return null if there's an error or no data found
}





var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);

class myDrawer extends StatelessWidget {
  final String titleone;
  final String titletwo;
  final String titlethree;

  const myDrawer({Key? key, required this.titleone, required this.titletwo, required this.titlethree}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      child: Column(
        children: [
          // const SizedBox(
          //   height: 18,
          // ),
          // Image.asset("assets/logo/logo_apk.png",scale: 3,),
          const SizedBox(
            height: 19,
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: const Icon(Icons.cabin_outlined),
              title: Text(
                '$titleone',
                style: drawerTextColor,
              ),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>const dashboard_page()));
              }
            ),
          ),
          
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: const Icon(Icons.dashboard_customize_outlined),
              title: Text(
                '$titletwo',
                style: drawerTextColor,
              ),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder:(context) => const main_screen(),));
              }
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: const Icon(Icons.person_outline_rounded),
              title: Text(
                '$titlethree',
                style: drawerTextColor,
              ),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder:(context) => const profile_page(),));
              }
            ),
          ),
          
          
          Padding(
            padding: tilePadding,
            child: ListTile(
                leading: const Icon(Icons.logout),
                title: Text(
                  'L O G O U T',
                  style: drawerTextColor,
                ),
//                 onTap: (){
//                   showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('LOG OUT'),
//           content: const Text('Are you sure you want to Logout'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//  auth.signOut().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>
//               const login_page()
//             ,), (route) => false)
            
//             );              },
//               child: const Text('OK'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Cancel'),
//             ),
//           ],
//         );
//       },
//     );
//            }
                    ),
          ),
        ],
      ),
    );
  }
}