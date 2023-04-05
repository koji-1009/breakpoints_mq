# breakpoints_mq

A lightweight library for implementing [window-size-classes](https://m3.material.io/foundations/layout/applying-layout/window-size-classes). Provide body, margin.

## How to use.

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
  crossAxisCount: 4,
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

## Requirements

- Flutter 3.0.0 or higher
