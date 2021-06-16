import 'package:flutter/material.dart';
import 'package:pblproject/models/details.dart';

class UserProfile extends StatelessWidget {
  final Details user;

  UserProfile(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient Details"),
        centerTitle: true,
      ),
      body: Container(
        height: 800,
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Material(
                  color: Colors.blue[500],
                  shape: CircleBorder(),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "PATIENT INFORMATION",
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 28.0, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),
            SizedBox(
              height: 2.0,
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 9.0),
              child: Row(
                children: [
                  Text(
                    "Name : ",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 28.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    user.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
              child: Container(
                color: Colors.purple,
              ),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 0.0, vertical: 9.0),
              child: Row(
                children: [
                  Text(
                    "Mobile Number : ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    user.MobileNo,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
              child: Container(
                color: Colors.purple,
              ),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 0.0, vertical: 9.0),
              child: Row(
                children: [
                  Text(
                    "Age : ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    user.age,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
              child: Container(
                color: Colors.purple,
              ),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 0.0, vertical: 9.0),
              child: Row(
                children: [
                  Text(
                    "Gender : ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    user.gender,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
              child: Container(
                color: Colors.purple,
              ),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 0.0, vertical: 9.0),
              child: Row(
                children: [
                  Text(
                    "Height : ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    user.height,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
              child: Container(
                color: Colors.purple,
              ),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 0.0, vertical: 9.0),
              child: Row(
                children: [
                  Text(
                    "Weight : ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    user.weight,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
              child: Container(
                color: Colors.purple,
              ),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 0.0, vertical: 9.0),
              child: Row(
                children: [
                  Text(
                    "Cronic Disease : ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    user.cronicDisease,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
              child: Container(
                color: Colors.purple,
              ),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 0.0, vertical: 9.0),
              child: Row(
                children: [
                  Text(
                    "Current Location : ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    user.currentLocation,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
              child: Container(
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
