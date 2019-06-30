import 'package:flutter/material.dart';
import '../repository/repo.dart';
import '../models/beer.dart';
import '../widgets/beertile.dart';
class Home extends StatefulWidget {
  createState() => Homefile();
}

class Homefile extends State<Home>{
  List<Beer> _beers =<Beer>[];

  @override
  void initState(){
    super.initState();
    listenforBeers();
  }
@override
  Widget build(BuildContext context) => Scaffold(
      body: ListView.builder(
      itemCount: _beers.length,
      itemBuilder: (context, index) => BeerTile(_beers[index]),
    ),
  );
   listenforBeers() async {
     final Stream<Beer> stream = await getBeers();
     stream.listen((Beer beer)=>
        setState(()=>_beers.add(beer))    
     );
  }
}