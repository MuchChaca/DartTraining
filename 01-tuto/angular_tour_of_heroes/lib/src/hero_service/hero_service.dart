import 'dart:async';
import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:http/http.dart';

import '../hero.dart';


@Injectable()
class HeroService{
  static const _heroesUrl = 'api/heroes'; // URL to web API

  final Client _http;

  HeroService(this._http);


  //* OLD - pre-api
	// Future<List<Hero>> getHeroes() async => mockHeroes;

  //* With mocking web api
  Future<List<Hero>> getHeroes() async {
    try {
      final response = await _http.get(_heroesUrl);
      final heroes = _extractData(response)
        .map((value) => new Hero.fromJson(value))
        .toList();
        return heroes;
    } catch(e) {
      throw _handleError(e);
    }
  }

  dynamic _extractData(Response resp) => JSON.decode(resp.body)['data'];

  Future<Hero> getHero(int id) async => 
    (await getHeroes()).firstWhere((hero) => hero.id == id);

  Exception _handleError(dynamic e) {
    print(e); // for demo purposes only
    return new Exception('Server error; cause: $e');
  }
}