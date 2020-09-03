import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/data.dart';
import 'package:provider_state_management/recieve.dart';


void main () => runApp(ChangeNotifierProvider(
create: (context) => Data(),
child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

  class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  }

  class _HomePageState extends State<HomePage> {

  @override
    Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( providerdata.value.toString(), style: TextStyle(fontSize: 50 ),),
            RaisedButton(
              onPressed: (){
               providerdata.Increment();
              },
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Receive()));
              },
            )
          ],
          ),
        ),
      ),
    );
  }
  }





