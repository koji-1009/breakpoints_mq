# breakpoints_mq

A lightweight library for implementing [Responsive layout grid](https://material.io/design/layout/responsive-layout-grid.html). Provide window, columns, margings/gutters.

## How to use.

Once you've added breakpoints to your project, you can get breakpoints like this.

```dart
final breakpoint = MediaQuery.of(context).breakpoint;
```

Then, use `breakpoint.columns`.

```dart
GridView.count(
  crossAxisCount: breakpoint.columns,
  children: List.generate(
    100,
    (index) => Padding(
      padding: EdgeInsets.all(breakpoint.gutters / 2),
      child: Card(
        child: Center(
          child: Text('No.${index + 1}'),
        ),
      ),
    ),
  ),
),
```

If you wont to get more information about breakpoints, see [documents](https://material.io/design/layout/responsive-layout-grid.html#breakpoints).

## Requirements

- Flutter 2.0.0 or higher
