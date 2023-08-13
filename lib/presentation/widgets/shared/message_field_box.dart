import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onvalue;
  const MessageFieldBox({
    super.key,
    required this.onvalue,
  });

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final focusNode = FocusNode();

    final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;
            onvalue(textValue);
            // print('valor de la caja de texto $textValue');
            textController.clear();
          },
          icon: const Icon(Icons.send_outlined),
        ));

    return TextFormField(
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        onvalue(value);
        // print('enviando $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
