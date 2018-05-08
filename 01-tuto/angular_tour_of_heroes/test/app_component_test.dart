@Tags(const ['aot'])
@TestOn('browser')

import 'package:angular/angular.dart';
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';

import 'package:angular_tour_of_heroes/app_component.dart';

import 'app_component_po.dart';

@AngularEntrypoint()
void main() {
  final testBed = new NgTestBed<AppComponent>();
  NgTestFixture<AppComponent> fixture;
  AppPO pageObject;

  setUp(() async {
    fixture = await testBed.create();
    pageObject = await fixture.resolvePageObject(AppPO);
  });

  tearDown(disposeAnyRunningTest);

  test('Default greeting', () async {
    // Change it: Check content of the page using pageObject.
    expect(pageObject, isNotNull);
  });
}
