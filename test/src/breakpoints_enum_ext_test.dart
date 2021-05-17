import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:breakpoints_mq/src/breakpoints_enum_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BreakpointScreenSizeExt#screenSize', () {
    test('width = 599', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(width: 599);
      expect(screenSize, BreakpointScreenSize.extraSmall);
      expect(screenSize, isNot(BreakpointScreenSize.smallScaleBody));
    });

    test('width = 600', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(width: 600);
      expect(screenSize, isNot(BreakpointScreenSize.extraSmall));
      expect(screenSize, BreakpointScreenSize.smallScaleBody);
      expect(screenSize, isNot(BreakpointScreenSize.smallFixBody));
    });

    test('width = 904', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(width: 904);
      expect(screenSize, isNot(BreakpointScreenSize.extraSmall));
      expect(screenSize, BreakpointScreenSize.smallScaleBody);
      expect(screenSize, isNot(BreakpointScreenSize.smallFixBody));
    });

    test('width = 905', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(width: 905);
      expect(screenSize, isNot(BreakpointScreenSize.smallScaleBody));
      expect(screenSize, BreakpointScreenSize.smallFixBody);
      expect(screenSize, isNot(BreakpointScreenSize.medium));
    });

    test('width = 1239', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(width: 1239);
      expect(screenSize, isNot(BreakpointScreenSize.smallScaleBody));
      expect(screenSize, BreakpointScreenSize.smallFixBody);
      expect(screenSize, isNot(BreakpointScreenSize.medium));
    });

    test('width = 1240', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(width: 1240);
      expect(screenSize, isNot(BreakpointScreenSize.smallFixBody));
      expect(screenSize, BreakpointScreenSize.medium);
      expect(screenSize, isNot(BreakpointScreenSize.large));
    });

    test('width = 1439', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(width: 1439);
      expect(screenSize, isNot(BreakpointScreenSize.smallFixBody));
      expect(screenSize, BreakpointScreenSize.medium);
      expect(screenSize, isNot(BreakpointScreenSize.large));
    });

    test('width = 1440', () {
      final screenSize = BreakpointScreenSizeExt.screenSize(width: 1440);
      expect(screenSize, isNot(BreakpointScreenSize.medium));
      expect(screenSize, BreakpointScreenSize.large);
    });
  });

  group('BreakpointScreenSizeExt#column', () {
    test('columns is 4', () {
      expect(BreakpointScreenSize.extraSmall.column, 4);
    });

    test('columns is 8', () {
      expect(BreakpointScreenSize.smallScaleBody.column, 8);
    });

    test('columns is 12', () {
      expect(BreakpointScreenSize.smallFixBody.column, 12);
      expect(BreakpointScreenSize.medium.column, 12);
      expect(BreakpointScreenSize.large.column, 12);
    });
  });

  group('BreakpointScreenSizeExt#column (screenSize)', () {
    test('columns is 4 (0~599)', () {
      expect(BreakpointScreenSizeExt.screenSize(width: 0).column, 4);
      expect(BreakpointScreenSizeExt.screenSize(width: 599).column, 4);
      expect(BreakpointScreenSizeExt.screenSize(width: 600).column, isNot(4));
    });

    test('columns is 8 (600~904)', () {
      expect(BreakpointScreenSizeExt.screenSize(width: 600).column, 8);
      expect(BreakpointScreenSizeExt.screenSize(width: 904).column, 8);
      expect(BreakpointScreenSizeExt.screenSize(width: 905).column, isNot(8));
    });

    test('columns is 12 (1240~)', () {
      expect(BreakpointScreenSizeExt.screenSize(width: 905).column, 12);
      expect(BreakpointScreenSizeExt.screenSize(width: double.infinity).column,
          12);
    });
  });

  group('BreakpointScreenSizeExt#margin (screenSize)', () {
    test('margin is 16 (0~599)', () {
      expect(BreakpointScreenSizeExt.margin(width: 0), 16);
      expect(BreakpointScreenSizeExt.margin(width: 599), 16);
      expect(BreakpointScreenSizeExt.margin(width: 600), isNot(16));
    });

    test('margin is 32 (600~904)', () {
      expect(BreakpointScreenSizeExt.margin(width: 600), 32);
      expect(BreakpointScreenSizeExt.margin(width: 904), 32);
      expect(BreakpointScreenSizeExt.margin(width: 905), isNot(32));
    });

    test('margin is scaling (905~1239)', () {
      expect(BreakpointScreenSizeExt.margin(width: 905), (905 - 840) / 2);
      expect(BreakpointScreenSizeExt.margin(width: 1000), (1000 - 840) / 2);
      expect(BreakpointScreenSizeExt.margin(width: 1239), (1239 - 840) / 2);
      expect(
          BreakpointScreenSizeExt.margin(width: 1240), isNot((1239 - 840) / 2));
    });

    test('margin is 200 (1240~1439)', () {
      expect(BreakpointScreenSizeExt.margin(width: 1240), 200);
      expect(BreakpointScreenSizeExt.margin(width: 1439), 200);
    });

    test('margin is scaling (1440~)', () {
      expect(BreakpointScreenSizeExt.margin(width: 1440), (1440 - 1040) / 2);
      expect(BreakpointScreenSizeExt.margin(width: 1960), (1960 - 1040) / 2);
      expect(BreakpointScreenSizeExt.margin(width: 2180), (2180 - 1040) / 2);
    });
  });
}
