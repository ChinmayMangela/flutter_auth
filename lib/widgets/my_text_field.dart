import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final TextInputType textInputType;
  final bool obscure;
  final TextEditingController myController;
  const MyTextField({
    super.key,
    required this.labelText,
    required this.textInputType,
    required this.obscure,
    required this.myController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      keyboardType: textInputType,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        filled: true,
        fillColor: const Color.fromARGB(136, 227, 242, 253),
        hintText: labelText,
        labelStyle: GoogleFonts.lato(),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
