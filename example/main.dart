import '../lib/prompter_jtt.dart';

void main(List<String> arguments) {
  final options = [
    Option('Option 1', 1),
    Option('Option 2', 2),
    Option('Option 3', 3)
  ];

  final prompter = Prompter();

  int selectedOption = prompter.askMultiple('Which option do you choose?', options);
  bool answer = prompter.askBinary('Was that the correct option?');

  print('Selected Option $selectedOption');
  print('Correct? $answer');
}