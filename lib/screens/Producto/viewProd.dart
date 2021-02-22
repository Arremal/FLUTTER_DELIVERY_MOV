import 'package:flutter/material.dart';
import '../Perfil/drawer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'detailProd.dart';
import '../Home/texti.dart';

class ProdPage extends StatefulWidget {
  @override
  _ProdPageState createState() => _ProdPageState();
}

class _ProdPageState extends State<ProdPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      body: SlidingUpPanel(
      maxHeight: height,
      minHeight: height/1.8,
      body: Container(
        height: height / 2,
        width: width,
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            Image(
            image: NetworkImage("https://rb.gy/lj2eiu"),
            fit: BoxFit.cover,
            height: height / 2,
            width: width,
          ),
            Positioned(
              top: 30.0,
              left: 5.0,
              child: IconButton(
              icon: Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 32.0,
                ), 
              onPressed: (){
                _openDrawer();
              },
              )
            ),
            Positioned(
              top: 10.0,
              right: 25.0,
              child: Texti(),
            )
          ],
        ) 
        ),
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.grey[100],
      panel:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 10.0),
             child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               Text(
                "Pizzeria Yoyitos",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
               ),
               Row(
                 children: [
                   Text("4.6",
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                   ),
                   Icon(
                     Icons.star,
                     color: Colors.yellow,
                     size: 20.0,
                    )
                 ],
               )
             ],
           ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
            child: Text(
             "Olivos - 4.8Km - \$-\$\$",
             style: TextStyle(
               color: Colors.grey,
               fontSize: 14.0
              ),
           ),
          ),
          SizedBox(
            height: 10.0,
          ),
           Container(
             height: 40.0,
             width: width,
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                menu(Color(0xFFFF6B01), "Pizza", "assets/fastcomida.png", Colors.white),
                menu(Colors.grey[300], "cat2", "assets/fastcomida.png", Colors.white),
                menu(Colors.grey[300], "cat3", "assets/fastcomida.png", Colors.white),
                menu(Colors.grey[300], "cat4", "assets/fastcomida.png", Colors.white),
                
             ],),
           ),
           Padding(
             padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
             child: Column(
               children: [
                 menuItemtab("assets/pizza.png", "Hawaiana", "Piña, aji, salsa", "25.00"),
                 menuItemtab("assets/pizza2.png", "Clasica", "Piña, aji, salsa", "25.00"),
                 menuItemtab("assets/pizza.png", "Hawaiana", "Piña, aji, salsa", "25.00"),
                 menuItemtab("assets/pizza2.png", "Clasica", "Piña, aji, salsa", "25.00"),
                 //menuItemtab("assets/pizza.png", "Hawaiana", "Piña, aji, salsa", "25.00"),
               ],
             ),
           )
         ] 
        )
      ),
      drawer: DrawerPerfil(),
        
        );
  }

  
  Widget menuItemtab(String prodImage, String producto, String ingredientes, String precio) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
      height: 100.0,
      width: width - 40.0,
      child: GestureDetector(
         onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProdDetail())),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 50.0),
            child: Container(
              padding: EdgeInsets.only(left:70.0, right:20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              height: 100.0,
              width: width - 90.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      producto,
                      style: TextStyle(fontSize: 18.0),
            
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      ingredientes,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],),
                  Text(
                    "\S/.$precio", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      color: Color(0xFFFF6B01),
                      fontSize: 16.0
                      ),
                  )
                ],
              ),
            ),
          ), 
          Positioned(
            left: 0.0,
            child: Image(
              image: AssetImage(prodImage),
              height: 100.0,
              width: 100.0,
            ) 
          ),
        ],
        
      ),
      )
    )
    
    );
  }

  Widget menu(Color colore,String menu, String menuImage, Color menuColor){
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Container(
        height: 40.0,
        width: 105.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: colore 
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(menuImage),
                height: 20.0,
                width: 20.0,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 5.0,),
              Text(
                menu,
                style: TextStyle(color: menuColor, fontWeight: FontWeight.bold),  
              )
            ],
          ),

      ),
    );

  }


}
