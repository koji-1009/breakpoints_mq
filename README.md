# breakpoints_mq

A lightweight library for implementing [Responsive layout grid](https://material.io/design/layout/responsive-layout-grid.html). Provide body, column, margin.

## How to use.

If you wont to get more information about breakpoints, see [documents](https://material.io/design/layout/responsive-layout-grid.html#breakpoints).

---

Once you've added breakpoints to your project, you can get breakpoints like this.

```dart
final size = MediaQuery.of(context).size;
final breakpoint = Breakpoint.fromSize(size); // or MediaQuery.of(context).breakpoint;
```

```dart
LayoutBuilder(
  builder: (context, constraints) {
    final breakpoint = Breakpoint.fromConstraints(constraints); // or constraints.breakpoint;
  }
);
```

```dart
final double width = getWidth();
final breakpoint = Breakpoint.fromWidth(width);
```

Then, use `breakpoint.column`.

```dart
GridView.count(
  crossAxisCount: breakpoint.column,
  children: List.generate(
    100,
    (index) => Padding(
      child: Card(
        child: Center(
          child: Text('No.${index + 1}'),
        ),
      ),
    ),
  ),
),
```

Alternatively, you can use BreakpointWidget in the Row.

```dart
Row(
  children: [
    Expanded(
      flex: 1,
      child: BreakpointWidget(
        child: SomeWidget(),
      ),
    ),
    Expanded(
      flex: 2,
      child: BreakpointWidget(
        child: AnotherWiget(),
      ),
    ),
  ], 
)
```

## Requirements

- Flutter 2.0.0 or higher
