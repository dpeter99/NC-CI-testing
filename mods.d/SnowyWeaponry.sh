#!/bin/bash

mkdir BUILDROOT
cd BUILDROOT
git clone https://github.com/sciwhiz12/SnowyWeaponry.git
cd SnowyWeaponry
gradle build
ls -al