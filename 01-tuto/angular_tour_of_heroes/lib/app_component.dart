import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
	selector: 'app-component',
	templateUrl: 'app_component.html',
	// template: '''
	// <h1>{{title}}</h1> <h2>{{hero}} details!</h2>
	// ''',
	directives: const [formDirectives],
)



class AppComponent {
	final title = 'Tour of Heroes';

	var hero = new Hero(1, 'Windstorm');
}


class Hero {
	final int id;
	String name;

	Hero(this.id, this.name);
}
