import 'package:flutter/material.dart';
import 'package:breakpoints/breakpoints.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breakpoints Demo',
      theme: ThemeData.from(colorScheme: ColorScheme.light()),
      darkTheme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breakpoint = MediaQuery.of(context).breakpoint;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Breakpoints Demo'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: breakpoint.margins / 2),
        child: GridView.count(
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
      ),
    );
  }
}
