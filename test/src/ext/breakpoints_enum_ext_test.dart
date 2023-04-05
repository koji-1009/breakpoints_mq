import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:breakpoints_mq/src/ext/breakpoints_enum_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BreakpointScreenSizeExt#screenSize', () {
    test('width = 599', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(599);
      expect(screenSize, BreakpointScreenSize.compact);
      expect(screenSize, isNot(BreakpointScreenSize.medium));
    });

    test('width = 600', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(600);
      expect(screenSize, isNot(BreakpointScreenSize.compact));
      expect(screenSize, BreakpointScreenSize.medium);
      expect(screenSize, isNot(BreakpointScreenSize.expanded));
    });

    test('width = 839', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(839);
      expect(screenSize, isNot(BreakpointScreenSize.compact));
      expect(screenSize, BreakpointScreenSize.medium);
      expect(screenSize, isNot(BreakpointScreenSize.expanded));
    });

    test('width = 840', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(840);
      expect(screenSize, isNot(BreakpointScreenSize.medium));
      expect(screenSize, BreakpointScreenSize.expanded);
      expect(screenSize, isNot(BreakpointScreenSize.medium));
    });

    test('width = 1200', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(1200);
      expect(screenSize, isNot(BreakpointScreenSize.medium));
      expect(screenSize, BreakpointScreenSize.expanded);
      expect(screenSize, isNot(BreakpointScreenSize.medium));
    });
  });

  group('BreakpointScreenSizeExt#margin (screenSize)', () {
    test('margin is 16 (0~599)', () {
      expect(BreakpointScreenSizeExt.margin(0), 16);
      expect(BreakpointScreenSizeExt.margin(599), 16);
      expect(BreakpointScreenSizeExt.margin(600), isNot(16));
    });

    test('margin is 24 (600~)', () {
      expect(BreakpointScreenSizeExt.margin(600), 24);
      expect(BreakpointScreenSizeExt.margin(839), 24);
      expect(BreakpointScreenSizeExt.margin(840), 24);
      expect(BreakpointScreenSizeExt.margin(1200), 24);
    });
  });
}
