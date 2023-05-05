import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
            autofillHints: const [AutofillHints.email],
            //inputFormatters: [TextProjectInputFormatter()._formatter],
            textInputAction: TextInputAction.next,
            focusNode: focusNodeTextFieldOne,
            decoration: _InputDecorator()._emailInput,
          ),
          TextField(focusNode: focusNodeTextFieldTwo,
          minLines: 2,
          maxLines: 4,
          )
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: 10, 
          width: 10.0 * (currentLength ?? 0), 
          color: Colors.green,
        );
  }
}

// class TextProjectInputFormatter {
//   final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
//           if (newValue.text == "a") {
//             return oldValue;
//           }
//           return oldValue;
//         });
  
// }

class _InputDecorator {
  final _emailInput = const InputDecoration(
              prefixIcon: Icon(Icons.mail), 
              border:OutlineInputBorder(),
              labelText: "E-mail", 
            );
  
}
