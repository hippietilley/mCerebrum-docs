#!/bin/bash

cd ../

# Clone all repositories
git clone https://github.com/MD2Korg/mCerebrum-AutoSenseBLE
git clone https://github.com/MD2Korg/mCerebrum-AutoSense
git clone https://github.com/MD2Korg/mCerebrum-Beacon
git clone https://github.com/MD2Korg/mCerebrum-Library
git clone https://github.com/MD2Korg/mCerebrum-DataKitAPI
git clone https://github.com/MD2Korg/mCerebrum-DataKit
git clone https://github.com/MD2Korg/mCerebrum-DemoApp
git clone https://github.com/MD2Korg/mCerebrum-EasySense
git clone https://github.com/MD2Korg/mCerebrum-EMAScheduler
git clone https://github.com/MD2Korg/mCerebrum-EMA
git clone https://github.com/MD2Korg/mCerebrum-Medication
git clone https://github.com/MD2Korg/mCerebrum-MindfulnessStrategy
git clone https://github.com/MD2Korg/mCerebrum-MoodSurfing
git clone https://github.com/MD2Korg/mCerebrum-MotionSense
git clone https://github.com/MD2Korg/mCerebrum-NotificationManager
git clone https://github.com/MD2Korg/mCerebrum-Omron
git clone https://github.com/MD2Korg/mCerebrum-OralB
git clone https://github.com/MD2Korg/mCerebrum-PhoneSensor
git clone https://github.com/MD2Korg/mCerebrum-Plotter
git clone https://github.com/MD2Korg/mCerebrum-Scheduler
git clone https://github.com/MD2Korg/mCerebrum-SelfReport
git clone https://github.com/MD2Korg/mCerebrum-StreamProcessor
git clone https://github.com/MD2Korg/mCerebrum-StudymPerf
git clone https://github.com/MD2Korg/mCerebrum-ThoughtShakeup
git clone https://github.com/MD2Korg/mCerebrum-Utilities

# Overwrite the existing build.gradles
# If this script breaks, it's probably a gradle build error. Check that gradle is
# building enough to import all projects as modules into the main doc project, make
# adjustments as needed and then copy the adjusted (and renamed) files to the
# buildgradles folder for this script.
cd mCerebrum-docs/buildgradles
cp -f autosenseblebuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-AutoSenseBLE/autosenseble/build.gradle

cp -f autosensebuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-AutoSense/autosense/build.gradle

cp -f beaconbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-Beacon/beacon/build.gradle

cp -f commonsbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-Library/commons/build.gradle

cp -f corebuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-Library/core/build.gradle

cp -f datakitapibuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-DataKitAPI/datakitapi/build.gradle

cp -f datakitbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-DataKit/datakit/build.gradle

cp -f demoappbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-DemoApp/app/build.gradle

cp -f easysensebuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-EasySense/easysense/build.gradle

cp -f ema_schedulerbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-EMAScheduler/ema_scheduler/build.gradle

cp -f emabuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-EMA/EMA/build.gradle

cp -f medicationbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-Medication/medication/build.gradle

cp -f mindfulnessbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-MindfulnessStrategy/mindfulnessstrategy/build.gradle

cp -f moodsurfingbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-MoodSurfing/moodsurfing/build.gradle

cp -f motionsensebuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-MotionSense/motionsense/build.gradle

cp -f notificationmanagerbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-NotificationManager/NotificationManager/build.gradle

cp -f omronbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-Omron/omron/build.gradle

cp -f oralb-appbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-OralB/oralb-app/build.gradle

cp -f phonesensorbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-PhoneSensor/phonesensor/build.gradle

cp -f plotterbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-Plotter/plotter/build.gradle

cp -f schedulerbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-Scheduler/scheduler/build.gradle

cp -f selfreportbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-SelfReport/selfreport/build.gradle

cp -f streamprocessorbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-StreamProcessor/streamprocessor/build.gradle

cp -f studymperfbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-StudymPerf/studymperf/build.gradle

cp -f systembuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-Library/system/build.gradle

cp -f thoughtshakeupbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-ThoughtShakeup/thoughtshakeup/build.gradle

cp -f utilitiesbuild.gradle build.gradle
cp -f build.gradle ../../mCerebrum-Utilities/utilities/build.gradle

cp -f settings.gradle ../settings.gradle

# Build gradle for docs
cd ../
gradle build

# Generate the JavaDocs
mkdir docs
cd ../
#javadoc -d docs -sourcepath autosenseble autosenseble beacon commons core datakitapi datakit app easysense ema_scheduler EMA medication mindfulnessstrategy moodsurfing motionsense NotificationManager omron oralb phonesensor plotter scheduler selfreport streamprocessor studymperf system thoughtshakeup utilities
javadoc -d mCerebrum-docs/docs org.md2k.demoapp #com.md2k.autosenseble autosenseble beacon commons core datakitapi datakit app easysense ema_scheduler EMA medication mindfulnessstrategy moodsurfing motionsense NotificationManager omron oralb phonesensor plotter scheduler selfreport streamprocessor studymperf system thoughtshakeup utilities
