import 'package:pblproject/models/user.dart';
import 'package:pblproject/screens/authenticate/authenticate.dart';
import 'package:pblproject/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either the Home or Authenticate widget

    final user = Provider.of<User>(context);
    if(user != null) {
      print(user.uid);
    }
    if(user == null){
      return Authenticate();
    }else{
      print(user);
      return Home(user.uid);
    }

  }
}