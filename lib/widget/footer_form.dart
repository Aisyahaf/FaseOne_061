import 'package:flutter/material.dart';

class FooterForm extends StatelessWidget {
  const FooterForm({super.key, required this.onPressedForm});

  final VoidCallback onPressedForm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedForm,
          child: Text("Submit"))
      ],
    );
  }
}