import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'dart:async';
import 'package:angular_router/angular_router.dart';

import '../hero.dart';
import '../hero_service/mock_heroes.dart';
import '../hero_service/hero_service.dart';

// void main() {
//   bootstrap(HeroesComponent, [
//     ROUTER_PROVIDERS,
//     // Remove next line in production
//     provide(LocationStrategy, useClass: HashLocationStrategy),
//   ]);
// }

// @RouteConfig(const [
//   const Route(path: '/heroes', name: 'Heroes', component: HeroesComponent)
// ])
@Component(
	selector: 'my-heroes',
	templateUrl: 'heroes_component.html',
  pipes: const [COMMON_PIPES],
	// template: '''
	// <h1>{{title}}</h1> <h2>{{hero}} details!</h2>
	// ''',
	directives: const [CORE_DIRECTIVES,formDirectives],
	styleUrls: const ['heroes_component.css']
)
class HeroesComponent implements OnInit {
	// final title = 'Tour of Heroes';
	final HeroService _heroService;
  final Router _router;

	HeroesComponent(
    this._heroService,
    this._router,
    );

	// Hero h1 = new Hero(1, "Wildstorm");

	List<Hero> heroes = mockHeroes;

	Hero selectedHero;

	// onSelect(Hero) event click handler
	void onSelect(Hero hero) => selectedHero = hero;

	// getter for heroes
  //* synchronous
  // void getHeroes() => heroes = _heroService.getHeroes();

	// getter for heroes
  //* asynchronous
	// void getHeroes() {
  // _heroService.getHeroes().then((heroes) => this.heroes = heroes);
  // }
  //* async|wait
  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  Future<Null> gotoDetail() => _router.navigate([
    'HeroDetail',
    {"id": selectedHero.id.toString()},
  ]);

  // // test slow connection
  // Future<List<Hero>> getHeroesSlowly() {
  //   return new Future.delayed(const Duration(seconds: 5), getHeroes);
  // }

	// OnInit implementation
	void ngOnInit() => getHeroes();
	// void ngOnInit() => getHeroesSlowly(); // test slow connections

  // add is the click event on the ``Add`` button from the heroes_component
  Future<Null> add(String name) async {
    name = name.trim();
    if (name.isEmpty) return;
    heroes.add(await _heroService.create(name));
    selectedHero = null; // why?
  }

  // delete is the click event to ``Delete`` a hero from the mocking api server
  Future<Null> delete(Hero hero) async {
    await _heroService.delete(hero.id);
    heroes.remove(hero);
    if(selectedHero == hero) selectedHero == null;
  }
}

