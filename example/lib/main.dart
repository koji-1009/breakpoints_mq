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
    final data = MediaQuery.of(context);
    final breakpoint = data.breakpoint;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Breakpoints Demo'),
        ),
        body: Column(
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
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: breakpoint.margins / 2),
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
            )
          ],
        ));
  }
}
