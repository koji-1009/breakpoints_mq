import 'package:breakpoints_mq/src/breakpoints_enum.dart';

/// Operator override for [BreakpointScreenSize].
extension BreakpointScreenSizeOperators on BreakpointScreenSize {
  /// Whether this [BreakpointScreenSize] is larger than [other].
  bool operator >(BreakpointScreenSize other) => index > other.index;

  /// Whether this [BreakpointScreenSize] is larger than or equal to [other].
  bool operator >=(BreakpointScreenSize other) => index >= other.index;

  /// Whether this [BreakpointScreenSize] is smaller than [other].
  bool operator <(BreakpointScreenSize other) => index < other.index;

  /// Whether this [BreakpointScreenSize] is smaller than or equal to [other].
  bool operator <=(BreakpointScreenSize other) => index <= other.index;
}
