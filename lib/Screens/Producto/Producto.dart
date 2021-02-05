/*import 'package:flutter/material.dart';

class Producto extends StatelessWidget {
  static const String routeName = '/Producto';

  const Producto({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "producto"
      ),
    );
  }
}*/


import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
final Geolocator _geolocator = Geolocator();

  // Initial location of the Map view

final startAddressController = TextEditingController();

// For storing the current position
Position _currentPosition;

// For controlling the view of the Map
GoogleMapController mapController;

class Producto extends StatelessWidget {
  static const String routeName = '/Producto';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapView(),
    );
  }
}

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    // Determining the screen width & height
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Scaffold(body: Stack(
          children: <Widget>[
            GoogleMap(
              initialCameraPosition: _initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
              mapController = controller;
              },
            ),

            Positioned(
              bottom: 8.0,
              left: 350.0,
              right: 8.0,
                child: ClipOval(
                child: Material(
                  color: Colors.orange[100], // button color
                  child: InkWell(
                    splashColor: Colors.orange, // inkwell color
                    child: SizedBox(
                      width: 56,
                      height: 56,
                    child: Icon(Icons.my_location),
                    ),onTap: () async {
                    
                      await _geolocator
                      .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
                      .then((Position position) async {
                      setState(() {
                      // Store the position in the variable
                      _currentPosition = position;
                      print('CURRENT POS: $_currentPosition');

                      // For moving the camera to current location
                      mapController.animateCamera(
                      CameraUpdate.newCameraPosition(
                      CameraPosition(
                      target: LatLng(position.latitude, position.longitude),
                      zoom: 18.0,
                      ),
                      ),
                      );
                    });
                    }).catchError((e) {
                      print(e);
                    });
                    },
                  ),
                ),
            ),
            ),
            


            Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 8.0),
              child: ClipOval(
                child: Material(
                  color: Colors.indigo[400], // button color
                  child: InkWell(
                    splashColor: Colors.orange, // inkwell color
                    child: SizedBox(
                      width: 40,
                      height: 40,
                    child: Icon(Icons.remove),
                    ),onTap: () {
                      mapController.animateCamera(
                      CameraUpdate.zoomOut(),
                      );
                    },
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 8.0),
              child: ClipOval(
                child: Material(
                  color: Colors.indigo[400], // button color
                  child: InkWell(
                    splashColor: Colors.orange, // inkwell color
                    child: SizedBox(
                      width: 40,
                      height: 40,
                    child: Icon(Icons.add),
                    ),onTap: () {
                      mapController.animateCamera(
                      CameraUpdate.zoomIn(),
                      );
                    },
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}