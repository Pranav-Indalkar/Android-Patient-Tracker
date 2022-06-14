import 'package:firebase_auth/firebase_auth.dart';
import 'package:pblproject/models/details.dart';
import 'package:pblproject/models/user.dart';
import 'package:pblproject/services/database.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object via firebase user
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(user.uid) : null;
  }

  //auth change user stream
  Stream<User> get user{
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  // sign in with email and password
  Future signInWithEMailAndPassWord(String email,String password) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEMailAndPassWord(String email,String password,Details userDetails) async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email.trim(), password: password);
      FirebaseUser user = result.user;
      await DatabaseService(user.uid).updateUserData(userDetails);
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print((e).toString());
      return null;
    }
  }
}