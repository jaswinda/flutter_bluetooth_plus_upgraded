// Copyright 2017, Jaswindar Singh.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library flutter_bluetooth_plus_upgraded;

import 'dart:async';

import 'package:collection/collection.dart';
import 'package:convert/convert.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import 'gen/flutterblue.pb.dart' as protos;

part 'src/bluetooth_characteristic.dart';
part 'src/bluetooth_descriptor.dart';
part 'src/bluetooth_device.dart';
part 'src/bluetooth_service.dart';
part 'src/constants.dart';
part 'src/flutter_bluetooth_plus_upgraded.dart';
part 'src/guid.dart';
