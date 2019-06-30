import 'package:beer/models/beer.dart';
import 'package:flutter/material.dart';
class Description extends StatelessWidget{
  final Beer _beer;
 Description(this._beer);
  Widget build(BuildContext context){
    return Scaffold(
      body: SimpleDialog(
        children: <Widget>[
           SimpleDialogOption(
                            child: Container(
                              color: Colors.white,
                              height: 400,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 150.0,
                                    width: 100.0,
                                    child: Image.network(_beer.image_url,fit: BoxFit.fill,)),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                  ),
                                  Text(
                                    _beer.tagline,
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                   Padding(
                                    padding: EdgeInsets.all(20.0),
                                  ),
                                   Text(
                                    _beer.description,
                                    maxLines: 5,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
        ],
      ),
    );
  }
}