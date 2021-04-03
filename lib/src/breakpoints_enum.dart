/// Breakpoint range definition for responsive design.
///
/// See the breakpoint system documentation for more information.
/// [https://material.io/design/layout/responsive-layout-grid.html#breakpoints].
enum BreakpointRange {
  /// 0~399
  lessThan400,

  /// 400~479
  lessThan480,

  /// 480~599
  lessThan600,

  /// 600~719
  lessThan720,

  /// 720~839
  lessThan840,

  /// 840~959
  lessThan960,

  /// 960~1023
  lessThan1024,

  /// 1024~1279
  lessThan1280,

  /// 1280~1439
  lessThan1440,

  /// 1440~1599
  lessThan1600,

  /// 1600~1919
  lessThan1920,

  /// 1920~
  oversize,
}

/// Breakpoint window definition for responsive design.
/// xsmall < small < medium < large < xlarge
///
/// See the breakpoint system documentation for more information.
/// [https://material.io/design/layout/responsive-layout-grid.html#breakpoints].
enum BreakpointWindow {
  /// xsmall < small < medium < large < xlarge
  ///   ^
  xsmall,

  /// xsmall < small < medium < large < xlarge
  ///            ^
  small,

  /// xsmall < small < medium < large < xlarge
  ///                    ^
  medium,

  /// xsmall < small < medium < large < xlarge
  ///                             ^
  large,

  /// xsmall < small < medium < large < xlarge
  ///                                     ^
  xlarge,
}
