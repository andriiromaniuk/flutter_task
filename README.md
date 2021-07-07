# test_task

My attempt at test task for Solid Software

This app changes its background color when you tap on screen anywhere and displays outlined "Hey there!" text on middle of the screen

## How to setup

## Additional info:
You may change the color with which app will start by changing the initialized value of _color field in _MyAppState class.

changeColor() method used to update the state of stateful widget, it is triggered when you tap anywhere on the screen.

color_generator.dart contains ColorUtil class with static changeColor method which return random Color by setting random values to R, G and B parameters of Color.fromRGBO() method, values (max RGB value and opacity) stored in color_constants.dart file for encapsulation purposes.

To create outlined text which will be visible on all possible RGB colors there are two text widgets first one is outline and the second one is "filler"
