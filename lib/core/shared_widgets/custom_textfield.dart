import 'package:chatapp/core/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType type;
  final Function(String)? onChange;
  final FormFieldValidator<String>? validate;
  final String? label;
  final String? hint;
  final String? errorText;
  final IconData? prefix;
  final bool isObscure;
  final IconData? suffix;
  final Function()? pressed;
  final Function()? tap;
  final bool? enable;

  const CustomTextField({
    Key? key,
    this.controller,
    required this.type,
    this.onChange,
    this.validate,
    this.label,
    this.hint,
    this.prefix,
    this.isObscure = false,
    this.suffix,
    this.pressed,
    this.tap,
    this.enable = true,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: tap,
      controller: controller,
      keyboardType: type,
      obscureText: isObscure,
      enabled: enable,
      onChanged: onChange,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        errorText: errorText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsApp.primaryColor,
            width: 2,
          ),
        ),
        prefixIcon: prefix != null ? Icon(prefix) : null,
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: pressed,
              )
            : null,
      ),
      style: const TextStyle(fontSize: 14),
    );
  }
}
