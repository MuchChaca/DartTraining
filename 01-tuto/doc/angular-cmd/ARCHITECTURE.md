
# <a href="https://webdev.dartlang.org/angular" ><img src="https://webdev.dartlang.org/assets/angulardart-5e7ebca88c5584b1da301f9f9e61d1e7d4f0688b6a9222991cde3bada950088c.svg" width="25px" /></a> Architecture Overview

[*Source*](https://webdev.dartlang.org/angular/guide/architecture)

AngularDart (which we usually call simply Angular in this documentation) is a framework for building client applications in HTML and Dart. It is published as the [**angular**](https://pub.dartlang.org/packages/angular) package, which is available via the Pub tool.

You write Angular applications by composing HTML templates with Angularized markup, writing component classes to manage those templates, adding application logic in services, and boxing components and services in modules.

Then you launch the app by bootstrapping the root module. Angular takes over, presenting your app content in a browser and responding to user interactions according to the instructions you’ve provided.

Of course, there is more to it than this. You’ll learn the details in the pages that follow. For now, focus on the big picture.

![](https://webdev.dartlang.org/assets/ng/devguide/architecture/overview2-cbd47a95bc2005665bf4a2b548281cc0ac3191395baaa154cf3891500e051d0f.png)


The architecture diagram identifies the eight main building blocks of an Angular app:

* [Modules](https://webdev.dartlang.org/angular/guide/architecture#modules)
* [Components](https://webdev.dartlang.org/angular/guide/architecture#components)
* [Templates](https://webdev.dartlang.org/angular/guide/architecture#templates)
* [Metadata](https://webdev.dartlang.org/angular/guide/architecture#metadata)
* [Data binding](https://webdev.dartlang.org/angular/guide/architecture#data-binding)
* [Directives](https://webdev.dartlang.org/angular/guide/architecture#directives)
* [Services](https://webdev.dartlang.org/angular/guide/architecture#services)
* [Dependency injection](https://webdev.dartlang.org/angular/guide/architecture#dependency-injection)

