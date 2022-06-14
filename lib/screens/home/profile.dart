import 'package:flutter/material.dart';
import 'package:pblproject/models/details.dart';
import 'package:provider/provider.dart';
import 'package:pblproject/services/database.dart';
import 'package:pblproject/models/user.dart';
import 'package:pblproject/shared/loading.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();

  String _currentName ;
  String _currentMobileNo;
  String _currentAge;
  String _currentGender;
  String _currentHeight;
  String _currentWeight;
  String _currentCronicDisease;

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update User Profile",
          style: TextStyle(
              fontSize: 18
          ),
        ),
      ),

      body: StreamBuilder<Details>(
          stream: DatabaseService(user.uid).userdata,
          builder: (context, snapshot) {
            if(snapshot.hasData){

              Details userData = snapshot.data;

              return Form(
                key: _formKey,
                child:SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Name",
                            fillColor: Colors.deepPurple[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple[200],width: 2)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple[500],width: 2)
                            ),
                          ),
                          initialValue: userData.name,
                          validator: (value) =>
                          value.isEmpty ? "Please Enter Your Name " : null,
                          onChanged: (value) {
                            setState(() => _currentName = value);
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Mobile Number",
                            fillColor: Colors.deepPurple[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple[200],width: 2)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple[500],width: 2)
                            ),
                          ),
                          initialValue: userData.MobileNo,
                          validator: (value) =>
                          value.isEmpty ? "Please Enter Your Mobile Number " : null,
                          onChanged: (value) {
                            setState(() => _currentMobileNo = value);
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Age",
                            fillColor: Colors.deepPurple[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple[200],width: 2)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple[500],width: 2)
                            ),
                          ),
                          initialValue: userData.age,
                          validator: (value) =>
                          value.isEmpty ? "Please Enter Your Age " : null,
                          onChanged: (value) {
                            setState(() => _currentAge = value);
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Gender",
                            fillColor: Colors.deepPurple[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple[200],width: 2)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple[500],width: 2)
                            ),
                          ),
                          initialValue: userData.gender,
                          validator: (value) =>
                          value.isEmpty ? "Please Enter Your Gender " : null,
                          onChanged: (value) {
                            setState(() => _currentGender = value);
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Height",
                            fillColor: Colors.deepPurple[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple[200],width: 2)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple[500],width: 2)
                            ),
                          ),
                          initialValue: userData.height.toString(),
                          validator: (value) =>
                          value.isEmpty ? "Please Enter Your Height " : null,
                          onChanged: (value) {
                            setState(() => _currentHeight = value);
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Weight",
                            fillColor: Colors.deepPurple[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple[200],width: 2)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple[500],width: 2)
                            ),
                          ),
                          initialValue: userData.weight,
                          validator: (value) =>
                          value.isEmpty ? "Please Enter Your Weight " : null,
                          onChanged: (value) {
                            setState(() => _currentWeight = value);
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Cronic Disease",
                            fillColor: Colors.deepPurple[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple[200],width: 2)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple[500],width: 2)
                            ),
                          ),
                          initialValue: userData.cronicDisease,
                          validator: (value) =>
                          value.isEmpty ? "Please Enter if you have Cronic Disease " : null,
                          onChanged: (value) {
                            setState(() => _currentCronicDisease = value);
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      RaisedButton(
                        color: Colors.lightBlue,
                        child: Text("Update",style: TextStyle(color: Colors.white),),
                        onPressed: () async {
                          await DatabaseService(user.uid).updateUserData(
                            Details(_currentName ?? userData.name,
                            _currentMobileNo ?? userData.MobileNo,
                            _currentAge ?? userData.age,
                            _currentGender ?? userData.gender,
                            _currentHeight ?? userData.height,
                            _currentWeight ?? userData.weight,
                            _currentCronicDisease ?? userData.cronicDisease,
                            "")
                          );
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ),
              );
            }else{
              return Loading();
            }
          }
      ),
    );
  }
}
