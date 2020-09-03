import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/data.dart';

class Receive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Text(providerdata.value.toString(),style: TextStyle(fontSize: 50),),
      ),
    );
  }
}

