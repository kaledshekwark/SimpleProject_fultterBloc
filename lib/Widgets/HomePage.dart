import 'package:flutter/material.dart';

import 'ButtonWidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Fultter bloc"),),
      body: Center(child:
      Column(
        children:
      [
        Text("Counter value is",style: TextStyle(fontSize: 20),)
       , Text("0",style:TextStyle(fontSize: 30,color: Colors.cyan),)

      ],
      mainAxisAlignment: MainAxisAlignment.center,)),
     floatingActionButton:  ButtonWidgets(),
    );
  }
}
