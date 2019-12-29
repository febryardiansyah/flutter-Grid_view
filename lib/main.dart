import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  final List<Map<String, dynamic>> _kategori =[
  {'cat': 'Flutter', 'color': Colors.pink},
  {'cat': 'Laravel', 'color': Colors.blue},
  {'cat': 'Vue.js', 'color': Colors.amber},
  {'cat': 'Javascript', 'color': Colors.yellow},
  {'cat': 'PHP', 'color': Colors.red},
  {'cat': 'Java', 'color': Colors.black},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Grid View'),),
        body: Container(
          margin: EdgeInsets.only(left: 10,top: 10),
          child: GridView.builder(
            itemCount: _kategori.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 100),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 3.0,
              crossAxisSpacing: 3,
              childAspectRatio: 1.0,
            ),
            itemBuilder: (context, i){
              return Container(
                height: 200,
                margin: EdgeInsets.all(10),
                color: _kategori[i]['color'],
                padding: EdgeInsets.all(10),
                child: Text(
                  _kategori[i]['cat'],
                  style: TextStyle(
                      color: _kategori[i]['cat'] != 'Javascript'? Colors.white:Colors.black,fontWeight: FontWeight.bold
                    ),
                  ),
              );
            }
          ),
        ),
      ),
    );
  }
}
