# issues building for ios

https://github.com/flutter/flutter/issues/20685

1. update pubspec
2. download GoogleService-Info.plist and put it in ios directory.
2.5 you may have to do this for both visual studio code and xcode (ios/Runner.xcworkspace => Runner/Runner)
3. update Info.plist with reverse project url from #2
4. from inside ios directory run $ pod install
5. update podfile
