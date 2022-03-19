import 'breakpoints_enum.dart';

/// Common [BreakpointScreenSize] extension.
extension BreakpointScreenSizeExt on BreakpointScreenSize {
  /// Get [BreakpointScreenSize] from [width].
  static BreakpointScreenSize screenSize(double width) {
    if (width < 600) {
      return BreakpointScreenSize.extraSmall;
    } else if (width < 905) {
      return BreakpointScreenSize.smallScaleBody;
    } else if (width < 1240) {
      return BreakpointScreenSize.smallFixBody;
    } else if (width < 1440) {
      return BreakpointScreenSize.medium;
    } else {
      return BreakpointScreenSize.large;
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
      case BreakpointScreenSize.extraSmall:
        return 16;
      case BreakpointScreenSize.smallScaleBody:
        return 32;
      case BreakpointScreenSize.smallFixBody:
        return (width - 840) / 2;
      case BreakpointScreenSize.medium:
        return 200;
      case BreakpointScreenSize.large:
        return (width - 1040) / 2;
    }
  }

  /// Get [int] for the number of columns.
  int get column {
    switch (this) {
      case BreakpointScreenSize.extraSmall:
        return 4;
      case BreakpointScreenSize.smallScaleBody:
        return 8;
      case BreakpointScreenSize.smallFixBody:
      case BreakpointScreenSize.medium:
      case BreakpointScreenSize.large:
        return 12;
    }
  }
}
