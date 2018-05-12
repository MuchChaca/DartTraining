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

  static final _headers = {'Content-Type': 'application/json'};


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

  // // @deprecated - before using mock service
  // Future<Hero> getHero(int id) async => 
  //   (await getHeroes()).firstWhere((hero) => hero.id == id);

  Future<Hero> getHero(int id) async {
    try {
      final resp = await _http.get('$_heroesUrl/$id');
      return new Hero.fromJson(_extractData(resp));
    } catch (ex) {
      throw _handleError(ex);
    }
  }

  // update Updates a hero in the mocking api server
  Future<Null> update(Hero hero) async {
    try {
      final url = '$_heroesUrl/${hero.id}';
      final resp = await _http.put(
        url, 
        headers: _headers, 
        body: JSON.encode(hero),
        );
      return new Hero.fromJson(_extractData(resp));
    } catch (ex) {
      throw _handleError(ex);
    }
  }

  // create creates a new hero in the mocking api server
  Future<Null> create(String name) async {
    try {
      final resp = await _http.post(
        _heroesUrl,
        headers: _headers,
        body: JSON.encode({'name': name}),
      );
      return new Hero.fromJson(_extractData(resp));
    } catch (ex) {
      throw _handleError(ex);
    }
  }

  Exception _handleError(dynamic e) {
    print(e); // for demo purposes only
    return new Exception('Server error; cause: $e');
  }
}