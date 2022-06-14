import 'package:flutter/material.dart';
import 'package:pblproject/models/details.dart';
import 'package:pblproject/services/auth.dart';
import 'package:pblproject/shared/loading.dart';

class GetUserDetails extends StatefulWidget {
  final String email;
  final String password;

  const GetUserDetails({Key key, this.email, this.password}) : super(key: key);

  @override
  State<GetUserDetails> createState() => _GetUserDetailsState();
}

class _GetUserDetailsState extends State<GetUserDetails> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String error = '';
  bool loading = false;

  String _currentName ;
  String _currentMobileNo;
  String _currentAge;
  String _currentGender;
  String _currentHeight;
  String _currentWeight;
  String _currentCronicDisease;

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
        title: Text('Tell Us More About You'),
      ),
      body: Container(
        child: Form(
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
                          child: Text("Register",style: TextStyle(color: Colors.white),),
                          onPressed: () async {
                            if(_formKey.currentState.validate()){
                              setState(() => loading = true);
                              Details userDetails = Details(_currentName,_currentMobileNo,_currentAge,_currentGender,_currentHeight,_currentWeight,_currentCronicDisease,"");
                              dynamic result = await _auth.registerWithEMailAndPassWord(widget.email,widget.password,userDetails);
                              print("Registered - "+result.toString());
                              if(result == null) {
                                setState(() {
                                  loading = false;
                                  error = 'Please supply a valid email';
                                });
                              }else{
                                Navigator.pop(context);
                              }
                            }
                          },
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14.0,backgroundColor: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
      ),
    );
  }
}