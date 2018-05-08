# Structure

Files structure:
```
angular_tour_of_heroes
  |- lib
  |  |- app_component.dart
  |- test
  |  |- app_test.dart
  |- web
  |  |-index.html
  |  |-main.dart
  |  |-styles.css
  |- pubspec.yaml
```

**Those are the minimum corefiles**. Each file having a distinct purpose and evolve independently as the app grows.

| File                        | Purpose                                                            |
|-----------------------------|--------------------------------------------------------------------|
|``lib/app_component.dart``   | Defines ``<my-app>``, the **root** component of what will become a tree of nested components as the app evolves |
|``test/app_test.dart``       | Defines ``AppComponent`` tests. you can learn how to test the Tour of Heroes from the [Testing](https://webdev.dartlang.org/angular/guide/testing) page |
| ``web/main.dart``           | Bootstraps the app to run in the browser                           |
| ``web/index.html``          | Contains the ``<my-app>`` tag in its ``<body>``. This is where the app lives ! |
| ``web/styles.css``          | A set of styles used throughout the app.                           |
| ``pubspec.yaml``            | The file that **describes the Dart package** (the app) and its dependencies. For example, it specifies the **angular** and **browser** pakcages as dependencies, as well as the **angular transformer**.  
  
**Note:** The **dart_to_js_script_rewriter** transformer, if present, must be **after angular** in the **transformers** list. If the order is wrong, Angular templates don’t work.



