import 'breakpoints_enum.dart';
import 'breakpoints_operator_ext.dart';

/// Common [BreakpointRange] extension.
extension BreakpointRangeExt on BreakpointRange {
  /// Get [BreakpointRange] from [width].
  static BreakpointRange range({required double width}) {
    if (width < 400) {
      return BreakpointRange.lessThan400;
    } else if (width < 480) {
      return BreakpointRange.lessThan480;
    } else if (width < 600) {
      return BreakpointRange.lessThan600;
    } else if (width < 720) {
      return BreakpointRange.lessThan720;
    } else if (width < 840) {
      return BreakpointRange.lessThan840;
    } else if (width < 960) {
      return BreakpointRange.lessThan960;
    } else if (width < 1024) {
      return BreakpointRange.lessThan1024;
    } else if (width < 1280) {
      return BreakpointRange.lessThan1280;
    } else if (width < 1440) {
      return BreakpointRange.lessThan1440;
    } else if (width < 1600) {
      return BreakpointRange.lessThan1600;
    } else if (width < 1920) {
      return BreakpointRange.lessThan1920;
    } else {
      return BreakpointRange.oversize;
    }
  }

  /// Get [BreakpointWindow] from [BreakpointRange].
  BreakpointWindow get window {
    if (this <= BreakpointRange.lessThan600) {
      return BreakpointWindow.xsmall;
    } else if (this <= BreakpointRange.lessThan1024) {
      return BreakpointWindow.small;
    } else if (this <= BreakpointRange.lessThan1440) {
      return BreakpointWindow.medium;
    } else if (this <= BreakpointRange.lessThan1920) {
      return BreakpointWindow.large;
    } else {
      return BreakpointWindow.xlarge;
    }
  }

  /// Get [int] for the number of columns.
  int get columns {
    if (this < BreakpointRange.lessThan720) {
      return 4;
    } else if (this < BreakpointRange.lessThan960) {
      return 8;
    } else {
      return 12;
    }
  }

  /// Get [int] for the number of margins.
  int get margins {
    if (this <= BreakpointRange.lessThan720) {
      return 16;
    } else {
      return 24;
    }
  }

  /// Get [int] for the number of gutters.
  int get gutters {
    if (this <= BreakpointRange.lessThan720) {
      return 16;
    } else {
      return 24;
    }
  }
}

/// Common [BreakpointWindow] extension.
extension BreakpointWindowExt on BreakpointWindow {
  /// Get [BreakpointWindow] from [width].
  static BreakpointWindow window({required double width}) =>
      BreakpointRangeExt.range(width: width).window;
}
