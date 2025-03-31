#!/bin/bash

mkdir BUILDROOT
mkdir PUBLISH

cd BUILDROOT

git clone https://github.com/sciwhiz12/SnowyWeaponry.git
cd SnowyWeaponry

./gradlew build

mv build/libs/*.jar ../../PUBLISH/

cd ../..
rm -rf BUILDROOT