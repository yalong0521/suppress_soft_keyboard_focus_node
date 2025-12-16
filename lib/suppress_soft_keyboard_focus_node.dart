
import 'package:flutter/widgets.dart';

import 'suppress_soft_keyboard_focus_node_platform_interface.dart';

class SuppressSoftKeyboardFocusNode extends FocusNode{
  SuppressSoftKeyboardFocusNode() {
    addListener(() {
      if (hasFocus) {
        SuppressSoftKeyboardFocusNodePlatform.instance.disableIME();
      } else {
        SuppressSoftKeyboardFocusNodePlatform.instance.enableIME();
      }
    });
  }
}
