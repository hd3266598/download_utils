import 'dart:collection';

import 'package:download_utils/model/LocalVideo.dart';
import 'package:flutter/foundation.dart';

LocalVideo videoNotifier = LocalVideo();

ValueNotifier<HashMap<DateTime, double>?> notifier = ValueNotifier(null);
