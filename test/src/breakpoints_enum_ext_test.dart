import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:breakpoints_mq/src/breakpoints_enum_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BreakpointRangeExt#range', () {
    test('width = 399', () {
      final range = BreakpointRangeExt.range(width: 399);
      expect(range, BreakpointRange.lessThan400);
      expect(range, isNot(BreakpointRange.lessThan480));
    });

    test('width = 400', () {
      final range = BreakpointRangeExt.range(width: 400);
      expect(range, isNot(BreakpointRange.lessThan400));
      expect(range, BreakpointRange.lessThan480);
      expect(range, isNot(BreakpointRange.lessThan600));
    });

    test('width = 479', () {
      final range = BreakpointRangeExt.range(width: 479);
      expect(range, isNot(BreakpointRange.lessThan400));
      expect(range, BreakpointRange.lessThan480);
      expect(range, isNot(BreakpointRange.lessThan600));
    });

    test('width = 480', () {
      final range = BreakpointRangeExt.range(width: 480);
      expect(range, isNot(BreakpointRange.lessThan480));
      expect(range, BreakpointRange.lessThan600);
      expect(range, isNot(BreakpointRange.lessThan720));
    });

    test('width = 599', () {
      final range = BreakpointRangeExt.range(width: 599);
      expect(range, isNot(BreakpointRange.lessThan480));
      expect(range, BreakpointRange.lessThan600);
      expect(range, isNot(BreakpointRange.lessThan720));
    });

    test('width = 600', () {
      final range = BreakpointRangeExt.range(width: 600);
      expect(range, isNot(BreakpointRange.lessThan600));
      expect(range, BreakpointRange.lessThan720);
      expect(range, isNot(BreakpointRange.lessThan840));
    });

    test('width = 719', () {
      final range = BreakpointRangeExt.range(width: 719);
      expect(range, isNot(BreakpointRange.lessThan600));
      expect(range, BreakpointRange.lessThan720);
      expect(range, isNot(BreakpointRange.lessThan840));
    });

    test('width = 720', () {
      final range = BreakpointRangeExt.range(width: 720);
      expect(range, isNot(BreakpointRange.lessThan720));
      expect(range, BreakpointRange.lessThan840);
      expect(range, isNot(BreakpointRange.lessThan960));
    });

    test('width = 839', () {
      final range = BreakpointRangeExt.range(width: 839);
      expect(range, isNot(BreakpointRange.lessThan720));
      expect(range, BreakpointRange.lessThan840);
      expect(range, isNot(BreakpointRange.lessThan960));
    });

    test('width = 840', () {
      final range = BreakpointRangeExt.range(width: 840);
      expect(range, isNot(BreakpointRange.lessThan840));
      expect(range, BreakpointRange.lessThan960);
      expect(range, isNot(BreakpointRange.lessThan1024));
    });

    test('width = 959', () {
      final range = BreakpointRangeExt.range(width: 959);
      expect(range, isNot(BreakpointRange.lessThan840));
      expect(range, BreakpointRange.lessThan960);
      expect(range, isNot(BreakpointRange.lessThan1024));
    });

    test('width = 960', () {
      final range = BreakpointRangeExt.range(width: 960);
      expect(range, isNot(BreakpointRange.lessThan960));
      expect(range, BreakpointRange.lessThan1024);
      expect(range, isNot(BreakpointRange.lessThan1280));
    });

    test('width = 1023', () {
      final range = BreakpointRangeExt.range(width: 1023);
      expect(range, isNot(BreakpointRange.lessThan960));
      expect(range, BreakpointRange.lessThan1024);
      expect(range, isNot(BreakpointRange.lessThan1280));
    });

    test('width = 1024', () {
      final range = BreakpointRangeExt.range(width: 1024);
      expect(range, isNot(BreakpointRange.lessThan1024));
      expect(range, BreakpointRange.lessThan1280);
      expect(range, isNot(BreakpointRange.lessThan1440));
    });

    test('width = 1279', () {
      final range = BreakpointRangeExt.range(width: 1279);
      expect(range, isNot(BreakpointRange.lessThan1024));
      expect(range, BreakpointRange.lessThan1280);
      expect(range, isNot(BreakpointRange.lessThan1440));
    });

    test('width = 1280', () {
      final range = BreakpointRangeExt.range(width: 1280);
      expect(range, isNot(BreakpointRange.lessThan1280));
      expect(range, BreakpointRange.lessThan1440);
      expect(range, isNot(BreakpointRange.lessThan1600));
    });

    test('width = 1439', () {
      final range = BreakpointRangeExt.range(width: 1439);
      expect(range, isNot(BreakpointRange.lessThan1280));
      expect(range, BreakpointRange.lessThan1440);
      expect(range, isNot(BreakpointRange.lessThan1600));
    });

    test('width = 1440', () {
      final range = BreakpointRangeExt.range(width: 1440);
      expect(range, isNot(BreakpointRange.lessThan1440));
      expect(range, BreakpointRange.lessThan1600);
      expect(range, isNot(BreakpointRange.lessThan1920));
    });

    test('width = 1599', () {
      final range = BreakpointRangeExt.range(width: 1599);
      expect(range, isNot(BreakpointRange.lessThan1440));
      expect(range, BreakpointRange.lessThan1600);
      expect(range, isNot(BreakpointRange.lessThan1920));
    });

    test('width = 1600', () {
      final range = BreakpointRangeExt.range(width: 1600);
      expect(range, isNot(BreakpointRange.lessThan1600));
      expect(range, BreakpointRange.lessThan1920);
      expect(range, isNot(BreakpointRange.oversize));
    });

    test('width = 1919', () {
      final range = BreakpointRangeExt.range(width: 1919);
      expect(range, isNot(BreakpointRange.lessThan1600));
      expect(range, BreakpointRange.lessThan1920);
      expect(range, isNot(BreakpointRange.oversize));
    });

    test('width = 1920', () {
      final range = BreakpointRangeExt.range(width: 1920);
      expect(range, isNot(BreakpointRange.lessThan1920));
      expect(range, BreakpointRange.oversize);
    });
  });

  group('BreakpointRangeExt#window', () {
    test('window is xsmall', () {
      expect(BreakpointRange.lessThan400.window, BreakpointWindow.xsmall);
      expect(BreakpointRange.lessThan480.window, BreakpointWindow.xsmall);
      expect(BreakpointRange.lessThan600.window, BreakpointWindow.xsmall);
    });

    test('window is small', () {
      expect(BreakpointRange.lessThan720.window, BreakpointWindow.small);
      expect(BreakpointRange.lessThan840.window, BreakpointWindow.small);
      expect(BreakpointRange.lessThan960.window, BreakpointWindow.small);
      expect(BreakpointRange.lessThan1024.window, BreakpointWindow.small);
    });

    test('window is medium', () {
      expect(BreakpointRange.lessThan1280.window, BreakpointWindow.medium);
      expect(BreakpointRange.lessThan1440.window, BreakpointWindow.medium);
    });

    test('window is large', () {
      expect(BreakpointRange.lessThan1600.window, BreakpointWindow.large);
      expect(BreakpointRange.lessThan1920.window, BreakpointWindow.large);
    });

    test('window is xlarge', () {
      expect(BreakpointRange.oversize.window, BreakpointWindow.xlarge);
    });
  });

  group('BreakpointRangeExt#window (range)', () {
    test('window is xsmall (0~599)', () {
      expect(
        BreakpointRangeExt.range(width: 0).window,
        BreakpointWindow.xsmall,
      );
      expect(
        BreakpointRangeExt.range(width: 599).window,
        BreakpointWindow.xsmall,
      );
      expect(
        BreakpointRangeExt.range(width: 600).window,
        isNot(BreakpointWindow.xsmall),
      );
    });

    test('window is small (600~1023)', () {
      expect(
        BreakpointRangeExt.range(width: 600).window,
        BreakpointWindow.small,
      );
      expect(
        BreakpointRangeExt.range(width: 1023).window,
        BreakpointWindow.small,
      );
      expect(
        BreakpointRangeExt.range(width: 1024).window,
        isNot(BreakpointWindow.small),
      );
    });

    test('window is medium (1024~1439)', () {
      expect(
        BreakpointRangeExt.range(width: 1024).window,
        BreakpointWindow.medium,
      );
      expect(
        BreakpointRangeExt.range(width: 1439).window,
        BreakpointWindow.medium,
      );
      expect(
        BreakpointRangeExt.range(width: 1440).window,
        isNot(BreakpointWindow.medium),
      );
    });

    test('window is large (1440~1919)', () {
      expect(
        BreakpointRangeExt.range(width: 1440).window,
        BreakpointWindow.large,
      );
      expect(
        BreakpointRangeExt.range(width: 1919).window,
        BreakpointWindow.large,
      );
      expect(
        BreakpointRangeExt.range(width: 1920).window,
        isNot(BreakpointWindow.large),
      );
    });

    test('window is xlarge (1920~)', () {
      expect(
        BreakpointRangeExt.range(width: 1920).window,
        BreakpointWindow.xlarge,
      );
      expect(
        BreakpointRangeExt.range(width: double.infinity).window,
        BreakpointWindow.xlarge,
      );
    });
  });

  group('BreakpointRangeExt#columns', () {
    test('columns is 4', () {
      expect(BreakpointRange.lessThan400.columns, 4);
      expect(BreakpointRange.lessThan480.columns, 4);
      expect(BreakpointRange.lessThan600.columns, 4);
    });

    test('columns is 8', () {
      expect(BreakpointRange.lessThan720.columns, 8);
      expect(BreakpointRange.lessThan840.columns, 8);
    });

    test('columns is 12', () {
      expect(BreakpointRange.lessThan960.columns, 12);
      expect(BreakpointRange.lessThan1024.columns, 12);
      expect(BreakpointRange.lessThan1280.columns, 12);
      expect(BreakpointRange.lessThan1440.columns, 12);
      expect(BreakpointRange.lessThan1600.columns, 12);
      expect(BreakpointRange.lessThan1920.columns, 12);
      expect(BreakpointRange.oversize.columns, 12);
    });
  });

  group('BreakpointRangeExt#columns (range)', () {
    test('columns is 4 (0~599)', () {
      expect(BreakpointRangeExt.range(width: 0).columns, 4);
      expect(BreakpointRangeExt.range(width: 599).columns, 4);
      expect(BreakpointRangeExt.range(width: 600).columns, isNot(4));
    });

    test('columns is 8 (600~839)', () {
      expect(BreakpointRangeExt.range(width: 600).columns, 8);
      expect(BreakpointRangeExt.range(width: 839).columns, 8);
      expect(BreakpointRangeExt.range(width: 840).columns, isNot(8));
    });

    test('columns is 12 (840)', () {
      expect(BreakpointRangeExt.range(width: 840).columns, 12);
      expect(BreakpointRangeExt.range(width: double.infinity).columns, 12);
    });
  });

  group('BreakpointRangeExt#margins', () {
    test('margins is 16', () {
      expect(BreakpointRange.lessThan400.margins, 16);
      expect(BreakpointRange.lessThan480.margins, 16);
      expect(BreakpointRange.lessThan600.margins, 16);
      expect(BreakpointRange.lessThan720.margins, 16);
    });

    test('margins is 24', () {
      expect(BreakpointRange.lessThan840.margins, 24);
      expect(BreakpointRange.lessThan960.margins, 24);
      expect(BreakpointRange.lessThan1024.margins, 24);
      expect(BreakpointRange.lessThan1280.margins, 24);
      expect(BreakpointRange.lessThan1440.margins, 24);
      expect(BreakpointRange.lessThan1600.margins, 24);
      expect(BreakpointRange.lessThan1920.margins, 24);
      expect(BreakpointRange.oversize.margins, 24);
    });
  });

  group('BreakpointRangeExt#margins (range)', () {
    test('margins is 16 (0~719)', () {
      expect(BreakpointRangeExt.range(width: 0).margins, 16);
      expect(BreakpointRangeExt.range(width: 719).margins, 16);
      expect(BreakpointRangeExt.range(width: 720).margins, isNot(16));
    });

    test('columns is 24 (720~)', () {
      expect(BreakpointRangeExt.range(width: 720).margins, 24);
      expect(BreakpointRangeExt.range(width: double.infinity).margins, 24);
    });
  });

  group('BreakpointRangeExt#gutters', () {
    test('gutters is 16', () {
      expect(BreakpointRange.lessThan400.gutters, 16);
      expect(BreakpointRange.lessThan480.gutters, 16);
      expect(BreakpointRange.lessThan600.gutters, 16);
      expect(BreakpointRange.lessThan720.gutters, 16);
    });

    test('gutters is 24', () {
      expect(BreakpointRange.lessThan840.gutters, 24);
      expect(BreakpointRange.lessThan960.gutters, 24);
      expect(BreakpointRange.lessThan1024.gutters, 24);
      expect(BreakpointRange.lessThan1280.gutters, 24);
      expect(BreakpointRange.lessThan1440.gutters, 24);
      expect(BreakpointRange.lessThan1600.gutters, 24);
      expect(BreakpointRange.lessThan1920.gutters, 24);
      expect(BreakpointRange.oversize.gutters, 24);
    });
  });

  group('BreakpointRangeExt#gutters (range)', () {
    test('gutters is 16 (0~719)', () {
      expect(BreakpointRangeExt.range(width: 0).gutters, 16);
      expect(BreakpointRangeExt.range(width: 719).gutters, 16);
      expect(BreakpointRangeExt.range(width: 720).gutters, isNot(16));
    });

    test('columns is 24 (720~)', () {
      expect(BreakpointRangeExt.range(width: 720).gutters, 24);
      expect(BreakpointRangeExt.range(width: double.infinity).gutters, 24);
    });
  });

  group('BreakpointWindowExt#window', () {
    test('window is xsmall (0~599)', () {
      expect(
        BreakpointWindowExt.window(width: 0),
        BreakpointWindow.xsmall,
      );
      expect(
        BreakpointWindowExt.window(width: 599),
        BreakpointWindow.xsmall,
      );
      expect(
        BreakpointWindowExt.window(width: 600),
        isNot(BreakpointWindow.xsmall),
      );
    });

    test('window is small (600~1023)', () {
      expect(
        BreakpointWindowExt.window(width: 600),
        BreakpointWindow.small,
      );
      expect(
        BreakpointWindowExt.window(width: 1023),
        BreakpointWindow.small,
      );
      expect(
        BreakpointWindowExt.window(width: 1024),
        isNot(BreakpointWindow.small),
      );
    });

    test('window is medium (1024~1439)', () {
      expect(
        BreakpointWindowExt.window(width: 1024),
        BreakpointWindow.medium,
      );
      expect(
        BreakpointWindowExt.window(width: 1439),
        BreakpointWindow.medium,
      );
      expect(
        BreakpointWindowExt.window(width: 1440),
        isNot(BreakpointWindow.medium),
      );
    });

    test('window is large (1440~1919)', () {
      expect(
        BreakpointWindowExt.window(width: 1440),
        BreakpointWindow.large,
      );
      expect(
        BreakpointWindowExt.window(width: 1919),
        BreakpointWindow.large,
      );
      expect(
        BreakpointWindowExt.window(width: 1920),
        isNot(BreakpointWindow.large),
      );
    });

    test('window is xlarge (1920~)', () {
      expect(
        BreakpointWindowExt.window(width: 1920),
        BreakpointWindow.xlarge,
      );
      expect(
        BreakpointWindowExt.window(width: double.infinity),
        BreakpointWindow.xlarge,
      );
    });
  });
}
