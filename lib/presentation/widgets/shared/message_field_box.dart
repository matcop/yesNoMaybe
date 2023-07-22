import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final OutlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final focusNode = FocusNode();

    final inputDecoration = InputDecoration(
        enabledBorder: OutlineInputBorder,
        focusedBorder: OutlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;
            print('valor de la caja de texto $textValue');
            textController.clear();
          },
          icon: const Icon(Icons.send_outlined),
        ));

    return TextFormField(
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('enviando $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
