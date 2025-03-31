#!/bin/bash

source ./uitl.sh

setup_build_environment

cd BUILDROOT

clone_repo https://github.com/sciwhiz12/SnowyWeaponry.git d16a0bd31879e08381d8c26c8a9e408cbe52c33f

./gradlew build

mv build/libs/*.jar ../../PUBLISH/

cd ../..
rm -rf BUILDROOT