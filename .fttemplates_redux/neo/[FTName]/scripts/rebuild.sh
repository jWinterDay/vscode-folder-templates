#!/bin/bash

flutter packages pub run build_runner build --delete-conflicting-outputs

flutter format -l 120 lib
flutter format -l 120 test_driver

# killall dart
# use vscode console: Dart: Restart Analysis Server
# shift+command+p
