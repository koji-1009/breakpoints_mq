import 'package:breakpoints_mq/src/breakpoint.dart';
import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:flutter/widgets.dart';

/// [MediaQueryData] extension to get [BreakpointScreenSize].
extension BreakpointsMediaQueryExt on MediaQueryData {
  /// Get [Breakpoint] from [MediaQueryData].
  @Deprecated('Use [Size] or [BuildContext] extension instead.')
  Breakpoint get breakpoint => Breakpoint.fromWidth(size.width);

  /// Get [BreakpointScreenSize] from [MediaQueryData].
  @Deprecated('Use [Size] or [BuildContext] extension instead.')
  BreakpointScreenSize get breakpointScreenSize => breakpoint.screenSize;

  /// Get the [double] of margin from [MediaQueryData].
  @Deprecated('Use [Size] or [BuildContext] extension instead.')
  double get breakpointMargin => breakpoint.margin;

  /// Get the [double] of body from [MediaQueryData].
  @Deprecated('Use [Size] or [BuildContext] extension instead.')
  double get breakpointBody => breakpoint.body;
}
