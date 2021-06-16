import 'package:flutter/material.dart';
import 'package:pblproject/models/details.dart';
import 'package:pblproject/screens/home/user_profile.dart';
import 'package:provider/provider.dart';

class DetailsList extends StatefulWidget {
  @override
  _DetailsListState createState() => _DetailsListState();
}

class _DetailsListState extends State<DetailsList> {

  @override
  Widget build(BuildContext context) {
    final details = Provider.of<List<Details>>(context)==null ? [] : Provider.of<List<Details>>(context);
    return ListView.builder(
      itemCount: details.length,
      itemBuilder: (context,index){
        return Column(
          children: [
            SizedBox(height: 16.0,),
            Material(
              color: Colors.white,
              elevation: 8.0,
              borderRadius: BorderRadius.circular(18),
              child: ListTile(
                leading: Material(
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
                title: Text(("Name : ${details[index].name}"),style: TextStyle(fontSize: 22),),
                subtitle: Text(("Mobile Number : ${details[index].MobileNo}"),style: TextStyle(fontSize: 18,)),
                visualDensity: VisualDensity.comfortable,
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => UserProfile(details[index])));
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
