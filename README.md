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

## License

```txt
MIT License

Copyright (c) 2021 Koji Wakamiya

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```