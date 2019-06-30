import 'package:flutter/material.dart';
import '../models/beer.dart';
import '../screens/description.dart';
class BeerTile extends StatelessWidget {
  final Beer _beer;
  BeerTile(this._beer);

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute
          (builder: (context)=>Description(_beer)));
        },
              child: ListTile(
          title: Text(_beer.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          subtitle: Text(_beer.tagline,style: TextStyle(color: Colors.white,fontSize: 13.0),),
          trailing: Icon(Icons.keyboard_arrow_right),
          selected: true,
          leading: Container(
            color: Colors.white,
            margin: EdgeInsets.only(left: 6.0),
            child: futureImage() ? Image.network(_beer.image_url, height: 50.0, fit: BoxFit.fill,) : CircularProgressIndicator(),
          ),
        ),
      ),
      Divider(
        color: Colors.white54
      )
    ],
  );
  bool futureImage(){
    if(_beer.image_url!=null){
      return true;
    }else return false;
    
  }
}
