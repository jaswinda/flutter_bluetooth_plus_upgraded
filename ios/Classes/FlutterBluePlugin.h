// Copyright 2017, Jaswindar Singh.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#if TARGET_OS_OSX
 #import <FlutterMacOS/FlutterMacOS.h>
#else
 #import <Flutter/Flutter.h>
#endif
#import <CoreBluetooth/CoreBluetooth.h>

#define NAMESPACE @"plugins.jaswinda.com/flutter_bluetooth_plus_upgraded"

@interface FlutterBluePlugin : NSObject<FlutterPlugin, CBCentralManagerDelegate, CBPeripheralDelegate>
@end

@interface FlutterBlueStreamHandler : NSObject<FlutterStreamHandler>
@property FlutterEventSink sink;
@end
