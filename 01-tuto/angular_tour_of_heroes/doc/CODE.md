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



