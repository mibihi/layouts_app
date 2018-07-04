import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main(){
 // debugPaintSizeEnabled = true;
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
Widget titleSection = Container(
  padding: const EdgeInsets.all(32.0),
  child: Row(
    children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),


            ),
            Text( 'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],),),
          ],
        ),
      ),
      Icon(Icons.star,color: Colors.red[500],),Text('41'),
    ],
  ),
);    //titlesection end

Column buildButtonColumn(IconData icon,String label){
  Color color = Theme.of(context).primaryColor;
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon,color: color,),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],

  );
}//buildbuttoncolumn method
Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildButtonColumn(Icons.call, 'CALL'),
      buildButtonColumn(Icons.near_me, 'ROUTE'),
      buildButtonColumn(Icons.share, 'SHARE'),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32.0),
  child: Text(
    '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
    softWrap: true,
  ),
);




    return MaterialApp(
      title: 'Layout models',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Top Lakes'),
          ),
          body: ListView(
            children: <Widget>[
              Image.asset(
                'images/lake.jpg',
                width: 600.00,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          )),
    );


  }
}
