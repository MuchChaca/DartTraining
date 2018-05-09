# Code

## Two-way binding
| ``app_component.html``                                   |
|----------------------------------------------------------|
| ```<input [(ngModel)]="hero.name" placeholder="name">``` |

| ``pubspec.yaml``                                         |
|----------------------------------------------------------|
| ``dependencies:``                                        |
|   ``angular_forms: ^1.0.0``                              |


| ``app_component.dart``                                     |
|------------------------------------------------------------|
|```import 'package:angular_forms/angular_forms.dart';```    |
| ```@Component( ... directives: const [formDirectives],)``` |


## Listing with ``ngFor``

```html
<li *ngFor="let hero of heroes">
```

> The ``*`` prefix for ``ngFor`` is a critical part of this syntax. It indicates that the ``<li>`` element and its children constitue a **master template**.  
>  
> The ``ngFor`` directive iterates over the component's ``heroes`` list and renders an instance of this template for each hero in that list.  
>  
>  The ``let hero``part of the expression identifies ``hero`` as the template input variable, which holds the current hero item for each iteration. You can reference this variable within the template to access the current hero's properties.  
>  
> Read more about ``ngFor`` and template input variables in the [Showing a list property with *ngFor](https://webdev.dartlang.org/angular/guide/displaying-data#ngFor) section of the [Displaying Data](https://webdev.dartlang.org/angular/guide/displaying-data#ngFor) page and the [ngFor](https://webdev.dartlang.org/angular/guide/displaying-data#ngFor) section of the [Template Syntax](https://webdev.dartlang.org/angular/guide/template-syntax) page.  

**Directive**
```dart
@Component(
  selector: 'my-app',
  // ···
  directives: const [CORE_DIRECTIVES, formDirectives],
)
```

## CSS
When you assign styles to a component, they are scoped to that specific component. These styles apply only to the ``AppComponent`` and don’t affect the outer HTML.

**lib/app_component.dart**
```dart
// Not recommended when adding many CSS classes:
styles: const [
  '''
    .selected { ... }
    .heroes { ... }
    ...
  '''
],
```

**lib/app_component.dart**
```dart
@Component(
  selector: 'my-app',
  // ···
  styleUrls: const ['app_component.css'],
  // ···
)
```

## Master/Detail
When users select a hero from the list, the selected hero should appear in the details view. This UI pattern is known as “master/detail.” In this case, the master is the heroes list and the detail is the selected hero.

### Click events
**lib/app_component.html**
```html
<li *ngFor="let hero of heroes" (click)="onSelect(hero)">
  <span class="badge">{{hero.id}}</span> {{hero.name}}
</li>
```
*The parentheses identify the ``<li>`` element’s ``click`` event as the target. The ``onSelect(hero)`` expression calls the AppComponent method, ``onSelect()``, passing the template input variable ``hero``, as an argument. That’s the same hero variable you defined previously in the ``ngFor`` directive.*

> Learn more about event binding at the [User Input](Learn more about event binding at the User Input page and the Event binding section of the Template Syntax page.) page and the [Event binding](https://webdev.dartlang.org/angular/guide/template-syntax#event-binding) section of the [Template Syntax](https://webdev.dartlang.org/angular/guide/template-syntax) page.

### Click handler
```dart
class AppComponent {
	// ...

	// onSelect(Hero) event click handler
	void onSelect(Hero hero) => selectedHero = hero;
}
```

**null error management**

When the app loads, selectedHero is null. The selected hero is initialized when the user clicks a hero’s name. Angular can’t display properties of the null ``selectedHero`` and throws the following error, visible in the browser’s console:

```
EXCEPTION: TypeError: Cannot read property 'name' of undefined in [null]
```
Wrap the HTML hero detail content of the template with a ``<div>``. Then add the ``ngIf`` core directive and set it to ``selectedHero != null``. Like this:
```html
<div *ngIf="selectedHero != null">
  <h2>{{selectedHero.name}} details!</h2>
  
  <div><label>id: </label>{{selectedHero.id}}</div>
  
  <div>
    <label>Name: </label>
    <input [(ngModel)]="selectedHero.name" placeholder="name">
  </div>
</div>
```

### Style selected hero
Add this to the ``<li>`` tag:
```
[class.selected]="hero === selectedHero"
```
When the expression ``(hero === selectedHero)`` is ``true``, Angular adds the ``selected`` CSS class. When the expression is ``false``, Angular removes the ``selected`` class.

> The ``===`` operator tests whether the given objects are [identical](https://api.dartlang.org/stable/dart-core/identical.html).  
>  
> Read more about the [class] binding in the [Template Syntax](https://webdev.dartlang.org/angular/guide/template-syntax#ngClass) guide.  


## Tutorial component tests
This tutorial doesn’t cover testing, but if you look at the example code, it has component tests for each new feature this tutorial adds. See the [Component Testing](https://webdev.dartlang.org/angular/guide/testing/component) page for details.

