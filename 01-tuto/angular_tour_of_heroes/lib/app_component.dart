import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/hero_service/hero_service.dart';
import 'src/heroes_component/heroes_component.dart';
import 'src/dashboard_component/dashboard_component.dart';
import 'src/hero_detail_component/hero_detail_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  directives: const [ROUTER_DIRECTIVES],
  providers: const [HeroService],
)
@RouteConfig(const [
  const Route(
    path: '/heroes', 
    name: 'Heroes', 
    component: HeroesComponent
  ),
  const Route(
    path: '/dashboard',
    name: 'Dashboard',
    component: DashboardComponent,
  ),
  // Currently, the browser launches with / in the address bar. When the app starts, it should show the dashboard and display the /#/dashboard path in the address bar.
  // To make this happen, add a redirect route:
  // Alternatively, you could define Dashboard as a default route. Read more about default routes and redirects in the Routing & Navigation page
  const Redirect(
    path: '/',
    redirectTo: const ['Dashboard'],
  ),
  // Route with parameter
  const Route(
    path: '/detail/:id',
    name: 'HeroDetail',
    component: HeroDetailComponent,
  ),
])
class AppComponent {
  final title = 'Tour of Heroes';
}