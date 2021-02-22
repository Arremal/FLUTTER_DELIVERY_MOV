import 'package:flutter/material.dart';
import '../Producto/viewProd.dart';



Widget Conten(){
  return Expanded(
    child: Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 120.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Pollito a la brasa",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "80 calories per 100g ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "3g fat | 10g Protein | 8 calories",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              buttoni(),



            ],
          ),
        ),

      ],

    ),
  );
}

Widget buttoni(){
  return Container(
    decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.all(Radius.circular(20.0))
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "LEARN MORE",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
    ),
  );
}


class Nabarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: AppBar(
        title: Text("Ingredients"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProdPage())), icon: Icon(Icons.arrow_back)),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
                Icons.add_alert
            ),
          )
        ],
      ),
    );
  }
}


class Linearwhite extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.color = Colors.white;

    final Rect rect = Rect.fromLTWH(0, 0, 20.0, 1.0);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

Widget cardin(){

  return Container(
    width: double.infinity,
    height: 250,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25)
        )
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Recipes",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "18 recipes avaible",
            style: TextStyle(
                fontSize: 10.0,
                color: Colors.black54
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: SizedBox(
                  height: 100,
                  child: lista(),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}


Widget lista(){
  return ListView(
    padding: const EdgeInsets.all(8),
    children: <Widget>[
      ListTile(
        leading: Container(
          height: 40,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/fondo.jpg")
              )
          ),
        ),
        title: Text("Grilled sea bass",
          style: TextStyle(
              color: Colors.black
          ),
        ),
        trailing: Icon(Icons.insert_emoticon,
          color: Colors.black,) ,
      ),
    ],
  );
}

Widget Buttonon(){
  IgnorePointer(ignoring: true,);

  return Container(
    decoration: BoxDecoration(
        color: Color(0xFFFF6B01),
        borderRadius: BorderRadius.all(Radius.circular(25)
        )
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
  );
}

Widget Buttonheart(){
  IgnorePointer(ignoring: true,);
  return Container(
    decoration: BoxDecoration(
        color: Color(0xFFFF6B01),
        borderRadius: BorderRadius.all(Radius.circular(25)
        )
    ),
    child: Padding(
      padding: EdgeInsets.all(1.0),
      child: Icon(
        Icons.ac_unit,
        color: Colors.white,
      ),
    ),
  );
}