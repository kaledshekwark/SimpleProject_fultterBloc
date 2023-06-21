import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fultterblocbeginermaster/Bloc/counter_bloc.dart';
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

       , BlocBuilder<CounterBloc,CounterState>(
          builder: (context, state) {
             if(state is CounterInitial)
               {
                  return  Text("0",style:TextStyle(fontSize: 30,color: Colors.cyan),);
               }
             else if( state is CounterChangeValueState)
               {
                 return  Text("${state.Counter}",style:TextStyle(fontSize: 30,color: Colors.cyan),);
               }

              else{ return SizedBox();}
        },)


      ],
      mainAxisAlignment: MainAxisAlignment.center,)),
     floatingActionButton:  ButtonWidgets(),


    );
  }
}
