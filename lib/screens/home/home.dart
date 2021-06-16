import 'package:flutter/material.dart';
import 'package:pblproject/screens/home/DetailsList.dart';
import 'package:pblproject/screens/home/profile.dart';
import 'package:pblproject/services/auth.dart';
import 'package:pblproject/services/database.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  final String uid;

  Home(this.uid);

  @override
  Widget build(BuildContext context) {

    // void _showProfile() {
    //   showModalBottomSheet(
    //       context: context, builder: (context) => ProfilePage());
    // }

    return StreamProvider.value(
      value: DatabaseService(uid).details,
      child: Scaffold(
        // backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text("Home Screen"),
          backgroundColor: Colors.lightBlueAccent,
          actions: [
            PopupMenuButton(
              itemBuilder: (context){
                final List<PopupMenuEntry> menuEntries = [
                  PopupMenuItem(
                    child: FlatButton.icon(
                        onPressed: () async {
                          await _auth.signOut();
                        },
                        icon: Icon(Icons.person),
                        label: Text("Logout")),
                  ),
                  PopupMenuItem(
                    child: FlatButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => ProfilePage()));
                        },
                        icon: Icon(Icons.settings),
                        label: Text("Profile")),
                  )
                ];
                return menuEntries;
              },
            )
          ],
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          left: true,
          right: true,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.jpeg'),
                  fit: BoxFit.cover,
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DetailsList(),
            ),
          )
        ),
      ),
    );
  }
}
