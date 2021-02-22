import 'dart:ui';

import 'package:flutter/material.dart';
import '../Producto/viewProd.dart';
import 'package:maps_launcher/maps_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
//making the location and the cart
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        "Los Olivos, Lima",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                  Container(
                    height: 55.0,
                    width: 55.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border:
                            Border.all(color: Colors.grey[300], width: 2.0)),
                    child: IconButton(
                      icon: Icon(Icons.my_location),
                      onPressed: () => MapsLauncher.launchCoordinates(
                   -12.109618905614093, -77.0059243807537, 'Google Headquarters are here'),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 30.0,
            ),
//
// Container for the info for 10 min delivery
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromRGBO(255, 248, 230, 1),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: width / 20),
                      height: 150.0,
                      width: width / 2.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery\na 10 min",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(215, 153, 79, 1)),
                          ),
                          SizedBox(
                            height: width / 30,
                          ),
                          Text(
                            "Disfruta tu comida en solo 10\nminutos. Sino es gratis",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    //here comes the image
                    Container(
                      height: 150.0,
                      width: width / 2.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/delivery.png"))),
                    )
                  ],
                ),
              ),
            ),
            //container ends here
            SizedBox(
              height: 10.0,
            ),

            Padding(
              padding: EdgeInsets.all(
                20.0,
              ),
              child: Text("Recomendamos:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            //we need the widget here now that is in listview
            Container(
              height: 180.0,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child:
                        pizzaTabs("Italiana", "34", "assets/pizza.png"),
                  ),
                  pizzaTabs("Mexicana", "24", "assets/pizza2.png"),
                  pizzaTabs("Americana", "21", "assets/pizza.png")
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            //new tab for the reataurant in cities....
            Padding(
              padding: EdgeInsets.all(
                20.0,
              ),
              child: Row(
                children: [
                  Text("Restaurantes en ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Text("Lima ,Metropolitana",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(215, 153, 79, 1)))
                ],
              ),
            ),
            //its container
            Container(
              // color: Colors.red,
              height: 200.0,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: restaurantsTabs("https://rb.gy/wqz3ug",
                          "Pizzeria Domo", "Italiana", "4.9km")),
                  restaurantsTabs(
                      "https://rb.gy/two7g2", "Tacos México", "Mexicana", "3.2km"),
                  restaurantsTabs("https://rb.gy/zt8plw", "Shorton",
                      "Cuisine", "4.9km")
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }

  Widget restaurantsTabs(
      String address, String name, String dish, String diatance) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProdPage())),
          child: Container(
            width: width / 2.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120.0,
                  width: width / 2.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: NetworkImage(address), fit: BoxFit.cover)),
                ),
                //name of the dish
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "$dish - $diatance - \S/.10",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget pizzaTabs(String title, String no, String assetimage) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Container(
        height: 170.0,
        width: width / 3.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromRGBO(255, 248, 230, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text("$no restaurantes", style: TextStyle(color: Colors.grey)),
            SizedBox(
              height: 10.0,
            ),
            Image(
              image: AssetImage(assetimage),
              height: 80.0,
              width: 80.0,
            )
          ],
        ),
      ),
    );
  }
}