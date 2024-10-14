import 'package:chatapp/core/shared_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class NumberTextfield extends StatelessWidget {
  final TextEditingController numberController;
  final String? errorMessage;

  const NumberTextfield({
    super.key,
    required this.numberController,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          controller: numberController,
          type: TextInputType.number,
          label: 'Number',
          hint: 'Enter your number',
          prefix: Icons.phone,
          validate: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your number';
            }
            return null;
          },
        ),
        if (errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              errorMessage!,
              style: const TextStyle(color: Colors.red),
            ),
          ),
      ],
    );
  }
}
