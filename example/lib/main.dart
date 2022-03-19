import 'package:flutter/material.dart';
import 'package:breakpoints_mq/breakpoints_mq.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breakpoints Demo',
      theme: ThemeData.from(colorScheme: const ColorScheme.light()),
      darkTheme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final breakpoint = data.breakpoint;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Breakpoints Demo'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: breakpoint.margin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('Screen Size: ${data.size.toString()}'),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('Breakpoint: ${breakpoint.toString()}'),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: breakpoint.column,
                children: List.generate(
                  100,
                  (index) => Card(
                    child: Center(
                      child: Text('No.${index + 1}'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
