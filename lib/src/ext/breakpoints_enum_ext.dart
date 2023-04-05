import 'package:breakpoints_mq/src/breakpoints_enum.dart';

/// Common [BreakpointScreenSize] extension.
extension BreakpointScreenSizeExt on BreakpointScreenSize {
  /// Get [BreakpointScreenSize] from [width].
  static BreakpointScreenSize screenSize(double width) {
    if (width < 600) {
      return BreakpointScreenSize.compact;
    } else if (width < 840) {
      return BreakpointScreenSize.medium;
    } else {
      return BreakpointScreenSize.expanded;
    }
  }

  /// Get [double] for size of body.
  static double body(double width) {
    return width - margin(width) * 2;
  }

  /// Get [int] for the number of margins.
  static double margin(double width) {
    final size = screenSize(width);
    switch (size) {
      case BreakpointScreenSize.compact:
        return 16;
      case BreakpointScreenSize.medium:
        return 24;
      case BreakpointScreenSize.expanded:
        return 24;
    }
  }
}
