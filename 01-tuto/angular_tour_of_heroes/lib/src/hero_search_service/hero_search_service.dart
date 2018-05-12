import 'dart:async';
import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:http/http.dart';

import '../hero.dart';


@Injectable()
class HeroSearchService {
  static const _heroesUrl = 'app/heroes'; // URL app/heroes

  final Client _http;

  HeroSearchService(this._http);

  Future<List<Hero>> search(String term) async {
    try {
      final resp = await _http.get('$_heroesUrl/?name=$term');
      return _extractData(resp)
        .map((json) => new Hero.fromJson(json))
        .toList();
    } catch (ex) {
      throw _handleError(ex);
    }
  }

  dynamic _extractData(Response resp) {
    return JSON.decode(resp.body)['data'];
  }

  Exception _handleError(dynamic e) {
    print(e); // for demo purpose only
    return new Exception('Server error; cause: $e');
  }
}