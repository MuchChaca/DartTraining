 
# <a href="https://webdev.dartlang.org/angular"><img src="https://webdev.dartlang.org/assets/angulardart-5e7ebca88c5584b1da301f9f9e61d1e7d4f0688b6a9222991cde3bada950088c.svg" width="25px"></a> Tutorial: Tour of Heroes 4.0


The grand plan for this tutorial is to build an app that helps a staffing agency manage its stable of heroes.  
  
The Tour of Heroes app covers the core fundamentals of Angular. You’ll build a basic app that has many of the features you’d expect to find in a full-blown, data-driven app: acquiring and displaying a list of heroes, editing a selected hero’s detail, and navigating among different views of heroic data. You’ll learn the following:  

* Use built-in directives to show and hide elements and display lists of hero data.
* Create components to display hero details and show an array of heroes.
* Use one-way data binding for read-only data.
* Add editable fields to update a model with two-way data binding.
* Bind component methods to user events, like keystrokes and clicks.
* Enable users to select a hero from a master list and edit that hero in the details view.
* Format data with pipes.
* Create a shared service to assemble the heroes.
* Use routing to navigate among different views and their components.

You’ll learn enough core Angular to get started and gain confidence that Angular can do whatever you need it to do. You’ll cover a lot of ground at an introductory level, and you’ll find many links to pages with greater depth.  
  
When you’re done with this tutorial, the app will look like this [live example](https://webdev.dartlang.org/examples/toh-6/) ([view source](https://github.com/angular-examples/toh-6/tree/4.x)).  

## The end game
Here’s a visual idea of where this tutorial leads, beginning with the “Dashboard” view and the most heroic heroes:

![preview](https://webdev.dartlang.org/assets/ng/devguide/toh/heroes-dashboard-1-6f0895f2c085be48e8ff0e0fa2d4231462bc38976a27c84b07e0ecf5af50a24a.png)

You can click the two links above the dashboard (“Dashboard” and “Heroes”) to navigate between this Dashboard view and a Heroes view.

If you click the dashboard hero “Magneta,” the router opens a “Hero Details” view where you can change the hero’s name.

![action-preview](https://webdev.dartlang.org/assets/ng/devguide/toh/hero-details-1-81d9c55459777d50cffec7d045677ebbe92c03738b8af238434d86f6fbf69ea1.png)

Clicking the “Back” button returns you to the Dashboard. Links at the top take you to either of the main views. If you click “Heroes,” the app displays the “Heroes” master list view.

![action-preview2](https://webdev.dartlang.org/assets/ng/devguide/toh/heroes-list-2-3ee5c28b54bca41dd72462442c7e4b39e0ac0084ea225826bdcd780d1d62ea6f.png)

When you click a different hero name, the read-only mini detail beneath the list reflects the new choice.

You can click the “View Details” button to drill into the editable details of the selected hero.

The following diagram captures all of the navigation options.

![action-preview3](https://webdev.dartlang.org/assets/ng/devguide/toh/nav-diagram-c47e060768f3479afd0b953161ba16e4fe1699f9db5fd137f7898ac90b3f5677.png)

Here’s the app in action:

![actino-preview4](https://webdev.dartlang.org/assets/ng/devguide/toh/toh-anim-0a8507bb70cca652091df25307e4b95a9c01f00d513e4b05d34f0d38f9f60a16.gif)

## Up next
You’ll build the Tour of Heroes app, step by step. Each step is motivated with a requirement that you’ve likely met in many apps. Everything has a reason.

Along the way, you’ll become familiar with many of the core fundamentals of Angular.

[The Starter App](https://webdev.dartlang.org/angular/tutorial/toh-pt0)