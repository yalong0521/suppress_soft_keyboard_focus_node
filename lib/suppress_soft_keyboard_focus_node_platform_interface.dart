import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'suppress_soft_keyboard_focus_node_method_channel.dart';

abstract class SuppressSoftKeyboardFocusNodePlatform extends PlatformInterface {
  /// Constructs a SuppressSoftKeyboardFocusNodePlatform.
  SuppressSoftKeyboardFocusNodePlatform() : super(token: _token);

  static final Object _token = Object();

  static SuppressSoftKeyboardFocusNodePlatform _instance =
      MethodChannelSuppressSoftKeyboardFocusNode();

  /// The default instance of [SuppressSoftKeyboardFocusNodePlatform] to use.
  ///
  /// Defaults to [MethodChannelSuppressSoftKeyboardFocusNode].
  static SuppressSoftKeyboardFocusNodePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SuppressSoftKeyboardFocusNodePlatform] when
  /// they register themselves.
  static set instance(SuppressSoftKeyboardFocusNodePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future disableIME() {
    throw UnimplementedError('disableIME() has not been implemented.');
  }

  Future enableIME() {
    throw UnimplementedError('enableIME() has not been implemented.');
  }
}
