import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );
    final inputDecoration =  InputDecoration(
          filled: true,
          hintText: 'end your message with a "?"',
          focusedBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {
              final textValue = textController.value.text;
              textController.clear();
              onValue(textValue);
            },
          ));
    return TextFormField(
      onTapOutside: (event){
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('${value}');
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      }
    );
  }
}
