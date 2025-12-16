import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'suppress_soft_keyboard_focus_node_platform_interface.dart';

/// An implementation of [SuppressSoftKeyboardFocusNodePlatform] that uses method channels.
class MethodChannelSuppressSoftKeyboardFocusNode
    extends SuppressSoftKeyboardFocusNodePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel =
      const MethodChannel('suppress_soft_keyboard_focus_node');

  @override
  Future disableIME() async {
    if (!Platform.isAndroid) return;
    final version = await methodChannel.invokeMethod('disableIME');
    return version;
  }

  @override
  Future enableIME() async {
    if (!Platform.isAndroid) return;
    final version = await methodChannel.invokeMethod('enableIME');
    return version;
  }
}
