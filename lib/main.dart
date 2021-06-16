import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pblproject/models/user.dart';
import 'package:pblproject/screens/wrapper.dart';
import 'package:pblproject/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
