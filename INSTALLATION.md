# GETTING STARTED
This is how users can get started with with Quotidiant app, first you must have software compatible with flutter/dart. 
<br>Softwares that work with the Quotidiant app are flutter, VScode, and andriod studio.
<br>In those softwares you need to add the extentions andriod sdk, flutter sdk, and Git-scm.
These will allow you to run the app properly, assuring you have all the right packages needed to run the application

# VISUAL STUDIO
After downloading Visual Studio Code you will need to access the terminal and run 'flutter doctor'.
<br>Flutter doctor checks to see if all the requirements of the flutter developments are met.
It is crucial that flutter doctor checks and approves of all needed requirements, otherwise the application wont run.
<br>Once you run flutter doctor and all the criteria is met, clone our repository from github.
<br>You can do this by running the command "git clone (our repository url)" in the terminal
<br>When its cloned you will cd into the Quotidiant app where the nested folder is saved.
<br>If everything is installed, run "flutter run" to run the application in the terminal.
You will see options 1, 2, and 3, the application is able to open in different browsers that are downloaded on your machine.

# FLUTTER PUB GET
Flutter pub get is very important when running applications in dart language.
<br>After running flutter pub get in the terminal it ensures the project version is run on the same version of flutter that your machine is running on.
<br>Flutter does this by checking the .yaml files and version matching based on the projects verison.


# FLUTTER PACKAGES
Flutter packages are like packages in other languages, if you are unfamiliar with them this guide will help.
This is how packages are downloaded to allow you to import librarys to your code.
Calling it with the word flutter infront of it will make use of the flutter SDK, which will map it to the SDK's packages get command.
For example if you are trying to run a function of time in your application.
To do this you need to import the flutter package of that function at the top of the code.
You also must add the package version to the pubspec page so that import can work properly in your project.
Flutter pub not only has the packages but detailed about all their different commands and how to import them into your project.
