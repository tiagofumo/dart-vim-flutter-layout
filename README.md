# dart-vim-flutter-layout
If you are trying to code flutter with vim but can't indent code to save your life. This is my attempt to solve that problem, at least for my personal use.

#### Known bugs
Indenting errors with comments
```dart
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ...
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
          ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
```

In this sample code, the lines below the `],` line are indented incorrectly. This only happen when you put comments like the ones in this code. The same code without comments is indented properly.

TODO:

1 - Fix the above errors

2 - Find a flag for cinoptions (if possible) to fix the `);` instead of "[overriding](https://github.com/tiagofumo/dart-vim-flutter-layout/blob/08d522ac712aee92988459eba857336e7f08372c/after/indent/dart.vim#L25-L28)" the DartIndent function from [dart-lang/dart-vim-plugin](https://github.com/dart-lang/dart-vim-plugin/blob/master/indent/dart.vim)
