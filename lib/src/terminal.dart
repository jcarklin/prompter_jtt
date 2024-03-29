import 'dart:io';

import 'option.dart';

class Terminal {

  const Terminal();

  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  void clearScreen() {
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f');
    } else {
      stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }

  String? collectInput() {
    return stdin.readLineSync();
  }

  void printOptions(List<Option> options) {
    options.asMap().forEach((index, option) {
      stdout.writeln('[${index}] - ${option.label}');
    });
    stdout.write('>');
  }

}