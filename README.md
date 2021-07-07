# test_task

My attempt at test task for Solid Software.

This app changes its background color when you tap on screen anywhere and displays outlined "Hey there!" text on middle of the screen.

## How to setup using Android Studio
Your Android Studio should support Flutter projects, if it does not - install flutter by guide: https://flutter.dev/docs/get-started/install.

1. File -> New -> Project From Version Control...
2. In URL enter https://github.com/andriiromaniuk/flutter_task.git and press "Clone"
3. Android Studio will tell you that "Packages get" has not been run, press "get dependencies" button
4. Select a device on which the app will run. If you don't have devices - set them up in AVD Manager, see here how: https://developer.android.com/studio/run/managing-avds
5. Run main.dart

## Additional info:

You may change the color with which app will start by changing the initialized value of _color field in _MyAppState class.

changeColor() method is used to update the state of stateful widget, it is triggered when you tap anywhere on the screen and it updates the color of Scaffold widget background.

color_generator.dart contains ColorUtil class with static changeColor method which return random Color by setting random values to R, G and B parameters to Color.fromRGBO() method, values (max RGB value and opacity) stored in color_constants.dart file for encapsulation purposes

To create outlined text which will be visible on all possible RGB colors there are two text widgets: first one is outline and the second one is "filler"
