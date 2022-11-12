import 'package:flutter/foundation.dart';

void realDebugPrint(final dynamic message) {
  if (kDebugMode) {
    debugPrint('$message');
  } else {
    print('$message');
  }
}
