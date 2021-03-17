import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/ProductoModel.dart';
import 'package:flutter_application_1/Screens/Producto/productolist.dart';
import 'package:flutter_application_1/Services/ProductoService.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Producto extends StatelessWidget {
  
  static const String routeName = '/Producto';
  final int todo;
  const Producto({Key key,@required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text("Productos",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.shopping_basket),
              tooltip: 'Productos seleccionados',
              onPressed: () {
              },
            ),
          )
        ],
        leading: IconButton(icon: Icon(Icons.navigate_before_sharp,color: Colors.black,),
                  onPressed: () {
                    Navigator.pop(context);
                  }
                )
      ),
      body: Container(
        child: 
        FutureBuilder<List<dynamic>>(
        future: fetchListaProductoXTienda(todo),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8.0,top: 2.0),
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column( 
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://picsum.photos/250?image=9')
                          ),
                          title: Text(snapshot.data[index]['snombre'], style: GoogleFonts.roboto(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),),
                          subtitle: Text(snapshot.data[index]['sdescripcion'], style: GoogleFonts.roboto(fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black38),),
                          trailing: IconButton(icon: Icon(Icons.navigate_next,color: Colors.black,),
                          onPressed: () {
                          }
                            ),
                        ),
                      ]
                    ),
                  ),
                );
              },
            );
          }
          else if (snapshot.hasError) {
            print("${snapshot.error}");
            return Text("${snapshot.error}");
          } 
          return CircularProgressIndicator();
    }
      )

        //ProductoList(todo)
      ),
    );
  }
}


/*class Producto extends StatefulWidget {
  static const String routeName = '/Producto';
  final int todo;

  const Producto({Key key,@required this.todo}) : super(key: key);

  @override
  _ProductoState createState() => _ProductoState();
}

class _ProductoState extends State<Producto> {
  int idTienda;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Color(0xFFFAFAFA),
        title: Text("Productos",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.navigate_before_sharp,color: Colors.black,),
                  onPressed: () {
                    Navigator.pop(context);
                  }
                )
      ),
      body: Container(
        child: ProductoList(todo)
      ),
    );
  }
} */


/*
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
}*/