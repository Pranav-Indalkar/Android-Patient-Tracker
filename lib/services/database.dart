import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pblproject/models/details.dart';

class DatabaseService{
  final String uid;

  DatabaseService(this.uid);

  final CollectionReference collection = Firestore.instance.collection('Hospital');

  Future updateUserData(String name,String MobileNo,String age,String gender, String height,String weight,String cronicDisease) async {
    return await collection.document(uid).setData(
        {'name' : name,
          'MobileNo' : MobileNo,
          'age' : age,
          'gender' : gender,
          'height' : height,
          'weight' : weight,
          'cronicDisease' : cronicDisease,
          'currentLocation' : "Room 1"
        }
    );
  }

  Details _userDataFromSnapshot(DocumentSnapshot snapshot){
    return Details(snapshot.data['name'],snapshot.data['MobileNo'],snapshot.data['age'],snapshot.data['gender'],
        snapshot.data['height'],snapshot.data['weight'],snapshot.data['cronicDisease'],snapshot.data['currentLocation']);
  }

  List<Details> _detailsFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc) {
      return Details(
          doc.data['name'] ?? '',
          doc.data['MobileNo'] ?? "",
          doc.data['age'] ?? '18',
          doc.data['gender'] ?? '',
          doc.data['height'] ?? '160',
          doc.data['weight'] ?? '60',
          doc.data['cronicDisease'] ?? 'None',
          doc.data['currentLocation'] ?? 'Room 1',
      );
    }).toList();
  }

  Stream<List<Details>> get details{
    return collection.snapshots().map(_detailsFromSnapshot);
  }

  Stream<Details> get userdata {
    return collection.document(uid).snapshots()
        .map(_userDataFromSnapshot);
  }

}