import 'package:flutter/material.dart';

class MemorizeTestPage extends StatefulWidget {
  static const String ROUTE_NAME = '/memorize-test';
  const MemorizeTestPage({super.key});

  @override
  State<MemorizeTestPage> createState() => _MemorizeTestPageState();
}

class _MemorizeTestPageState extends State<MemorizeTestPage> {
  final List<String> verseWords = [
    'You',
    'will',
    'seek',
    'me',
    'and',
    'find',
    'me',
    'when',
  ];
  int currentWordIndex = 0;
  String textFieldContent = '';
  final TextEditingController _controller = TextEditingController();

  void _handleInput(final String input) {
    if (currentWordIndex >= verseWords.length) return;

    final correctWord = verseWords[currentWordIndex];
    if (input.toLowerCase() == correctWord[0].toLowerCase()) {
      // Correct input, autofill the word
      setState(() {
        if (currentWordIndex == verseWords.length - 1) {
          textFieldContent += correctWord;
        } else {
          textFieldContent += '$correctWord ';
        }

        _controller.text = textFieldContent;
        currentWordIndex++;
      });
    } else {
      // Incorrect input, show a snackbar and insert wrong word
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Wrong letter: $input')));
      setState(() {
        textFieldContent += '$input ';
        _controller.text = textFieldContent;
      });
    }
  }

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Memorize Test'),
        ),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'You will seek me and find me when',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _controller,
                maxLines: null,
                onChanged: (final value) {
                  if (value.isNotEmpty) {
                    String lastChar = value[value.length - 1];
                    _handleInput(lastChar);
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'Type the 1st letter of each word',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
