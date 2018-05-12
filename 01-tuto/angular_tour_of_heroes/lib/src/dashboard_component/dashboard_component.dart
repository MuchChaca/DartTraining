import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../hero.dart';
import '../hero_service/hero_service.dart';
import '../hero_search_component/hero_search_component.dart';

@Component(
    selector: 'my-dashboard',
    templateUrl: 'dashboard_component.html',
    styleUrls: const ['dashboard_component.css'],
    directives: const [CORE_DIRECTIVES, 
      ROUTER_DIRECTIVES,
      HeroSearchComponent,
      ],
)
class DashboardComponent implements OnInit {
  
  List<Hero> heroes;

  // the serve
  final HeroService _heroService;

  // Construct
  DashboardComponent(this._heroService);

  Future<Null> ngOnInit() async {
    heroes = (await _heroService.getHeroes()).skip(1).take(4).toList();
  }
}

// This kind of logic is also used in the HeroesComponent:
//  Define a heroes list property.
//    Inject the HeroService in the constructor and hold it in a private _heroService field.
//    Call the service to get heroes inside the Angular ngOnInit() lifecycle hook.
//    In this dashboard you specify four heroes (2nd, 3rd, 4th, and 5th).

