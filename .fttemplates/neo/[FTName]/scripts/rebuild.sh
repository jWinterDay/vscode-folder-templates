#!/bin/bash

flutter packages pub run build_runner build --delete-conflicting-outputs

# cd flutter_driver

# pwd
# flutter packages pub run build_runner build --delete-conflicting-outputs
# cd ..


flutter format -l 120 lib
killall dart
