import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'src/hero_detail_component.dart';
import 'src/hero_service.dart';

@Component(
	selector: 'app-component',
	templateUrl: 'app_component.html',
	// template: '''
	// <h1>{{title}}</h1> <h2>{{hero}} details!</h2>
	// ''',
	directives: const [CORE_DIRECTIVES, HeroDetailComponent],
	styleUrls: const ['app_component.css'],
	providers: const [HeroService],
)



class AppComponent implements OnInit {
	final title = 'Tour of Heroes';
	final HeroService _heroService;

	AppComponent(this._heroService);

	// Hero h1 = new Hero(1, "Wildstorm");

	List<Hero> heroes = mockHeroes;

	Hero selectedHero;

	// onSelect(Hero) event click handler
	void onSelect(Hero hero) => selectedHero = hero;

	// getter for heroes
	void getHeroes() => heroes = _heroService.getHeroes();

	// OnInit implementation
	void ngOnInit() => getHeroes();
}

