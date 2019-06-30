import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/beer.dart';
Future<Stream<Beer>> getBeers() async {
  final String url = 'https://api.punkapi.com/v2/beers';
  final client = new http.Client();
  final request = await client.send(
    http.Request('get',Uri.parse(url))
  );

  return request.stream
  .transform(Utf8Decoder())
  .transform(json.decoder)
  .expand((data)=> (data as List))
  .map((data)=>Beer.fromJSON(data));
}