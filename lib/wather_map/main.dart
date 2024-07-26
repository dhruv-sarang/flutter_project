import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wather-Map',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CameraPosition _cameraPosition = CameraPosition(
      target: LatLng(21.190109057735445, 72.81359696003351), zoom: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wather-Map'),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: GoogleMap(
              initialCameraPosition: _cameraPosition,
            ),
          ),
          SizedBox(height: 16,),
          Center(
            child: Container(
                child: FilledButton(
                  onPressed: () {
                    askForLocationPermission();
                  },
                  child: Text('ASK FOR LOCATION PERMISSION'),
                )),
          ),
        ],
      ),
    );
  }

  Future<void> askForLocationPermission() async {
    PermissionStatus status = await Permission.location.status;

    if (status.isGranted) {
      print('permission already granted');
      // doTask()
    } else {
      // ask for permission
      status = await Permission.location.request();

      if (status == PermissionStatus.granted) {
        print('permission granted');
        // doTask()
      } else if (status == PermissionStatus.denied) {
        print('permission denied');
      } else if (status == PermissionStatus.permanentlyDenied) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Permission'),
            content: Text('We need permission to get your current location'),
            actions: [
              TextButton(
                onPressed: () {
                  // navigate to app settings
                  openAppSettings();
                  Navigator.pop(context);
                },
                child: Text('Settings'),
              )
            ],
          ),
        );
      }
    }
  }
}


//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:location/location.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Weather-Map',
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   GoogleMapController? mapController;
//   Location location = Location();
//   CameraPosition _cameraPosition = CameraPosition(target: LatLng(21.190109057735445, 72.81359696003351), zoom: 16);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Weather-Map'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 300,
//             width: double.infinity,
//             child: GoogleMap(
//               initialCameraPosition: _cameraPosition,
//               onMapCreated: (GoogleMapController controller) {
//                 mapController = controller;
//               },
//             ),
//           ),
//           SizedBox(height: 16),
//           Center(
//             child: Container(
//               child: ElevatedButton(
//                 onPressed: () {
//                   _getCurrentLocation();
//                 },
//                 child: Text('SET LIVE LOCATION'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Future<void> _getCurrentLocation() async {
//     var status = await Permission.location.request();
//
//     if (status.isGranted) {
//       LocationData currentLocation = await location.getLocation();
//       setState(() {
//         _cameraPosition = CameraPosition(target: LatLng(currentLocation.latitude!, currentLocation.longitude!), zoom: 16);
//       });
//       print('Lat : ${_cameraPosition}');
//       mapController!.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition));
//     } else {
//       print('Location permission denied.');
//     }
//   }
// }