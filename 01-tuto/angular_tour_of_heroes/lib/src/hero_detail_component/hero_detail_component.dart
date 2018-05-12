import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

import '../hero.dart';
import '../hero_service/hero_service.dart';

@Component(
		selector: 'hero-detail',
		templateUrl: 'hero_detail_component.html',
		directives: const [CORE_DIRECTIVES, formDirectives],
    styleUrls: const ['hero_detail_component.css'],
)
class HeroDetailComponent implements OnInit {

  final HeroService _heroService;
  final RouteParams _routeParams;
  final Location _location;

  HeroDetailComponent(this._heroService, this._routeParams, this._location);

	Hero hero;

  // OnInit implementation
  Future<Null> ngOnInit() async {
    var _id = _routeParams.get('id');
    var id = int.parse(_id ?? '', onError:(_) => null);
    if (id != null) {
      hero = await(_heroService.getHero(id));
    }
  }

  // To navigate somewhere else, users can click one of the two links in the AppComponent or click the browser’s back button. 
  // Now add a third option, a goBack() method that navigates backward one step in the browser’s history stack using the Location service you injected previously.
  void goBack() => _location.back();

  // In order to save changes made to a hero to the mocking api server
  Future<Null> save() async {
    await _heroService.update(hero);
    goBack();
  }
}


