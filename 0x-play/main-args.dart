// Run the app like this: ``dart -c args.dart 1 test``
void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}

// try something like:
// ```bash
// dart -c main-args.dart 42 42 42 fourty-two
// ```

// [args library to parse command-line arguments](https://pub.dartlang.org/packages/args)
