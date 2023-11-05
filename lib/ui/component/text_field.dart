import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  const CTextField({
    super.key,
    required this.onChanged,
    this.label,
    this.hint,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
  });

  final ValueChanged<String> onChanged;
  final String? label;
  final String? hint;
  final Widget? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        onChanged: onChanged,
        autocorrect: true,
        obscureText: obscureText,
        validator: validator,
        keyboardType: keyboardType,
        enableSuggestions: !obscureText,
        decoration: InputDecoration(
          icon: icon,
          label: Text(label ?? ""),
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            ),
             ),
      ),
    );
  }
}
