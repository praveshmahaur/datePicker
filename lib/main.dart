
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>MyHomePageState();

}

class MyHomePageState extends State<MyHomePage>{
  RangeValues values =RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: AppBar(
          title: Text("Range"),
        ),
        body:
          Center(
            child: RangeSlider(
              values: values,
              labels: labels,
              divisions: 10,
              activeColor: Colors.green,
              inactiveColor: Colors.green.shade100,
              min: 0,
              max: 100,
              onChanged:(newValue){
                values = newValue;
                print("${newValue.start}, ${newValue.end}");
                setState(() {

                });
              } ,
            ),
          )
    );
  }

}