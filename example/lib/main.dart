import 'package:example/breakpoint_demo_screen.dart';
import 'package:example/breakpoint_widget_demo_screen.dart';
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
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(),
      ),
      darkTheme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breakpoints Demo Home'),
      ),
      body: Center(
        child: BreakpointWidget(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(32),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const BreakpointDemoScreen(),
                    ),
                  );
                },
                child: const Text('Show breakpoint demo'),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(32),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const BreakpointWidgetDemoScreen(),
                    ),
                  );
                },
                child: const Text('Show breakpoint widget demo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
