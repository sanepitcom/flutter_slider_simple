import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context) => MaterialApp(
    title:'Slider Example',
    home:Scaffold(
      appBar:AppBar(title:const Text('Slider Exapmle'),),
      body:Padding(
        padding:EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child:SliderExample(),
      ),
    ),
  );
}

class SliderExample extends StatefulWidget{
  @override
  createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample>{
  var value = 0.0;
  @override
  build(BuildContext context) => Row(
    children:[
      Slider(
        value:value,
        min:0,
        max:100,
        onChanged:(chgValue) => setState(() => value = chgValue),
      ),
      Text('${value.toInt()}',style:TextStyle(fontSize:24),),
    ],
  );
}
