#!/bin/bash

flutter packages pub run build_runner build --delete-conflicting-outputs

cd test_driver

flutter packages pub run build_runner build --delete-conflicting-outputs
cd ..

flutter format -l 120 lib
flutter format -l 120 test_driver

killall dart