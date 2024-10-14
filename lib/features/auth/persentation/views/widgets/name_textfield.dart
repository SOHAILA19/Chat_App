import 'package:chatapp/core/shared_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class NameTextfield extends StatelessWidget {
  final TextEditingController nameController;
  final String? errorMessage;

  const NameTextfield({
    super.key,
    required this.nameController,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          controller: nameController,
          type: TextInputType.name,
          label: 'Name',
          hint: 'Enter your name',
          prefix: Icons.person,
          validate: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your Name';
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
