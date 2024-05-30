import 'package:flutter/material.dart';
import 'package:teslo_shop/config/constants/const.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final bool obscureText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onPressedIcon;
  final String? Function(String?)? validator;
  final IconData? iconPrincipal;
  final IconData? iconSecundario;

  const CustomTextFormField({
    super.key,
    this.label,
    this.hint,
    this.errorMessage,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
    this.iconPrincipal,
    this.iconSecundario,
    this.onPressedIcon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
        borderSide: const BorderSide(color: Color.fromARGB(255, 58, 57, 57)),
        borderRadius: BorderRadius.circular(40));

    final size = MediaQuery.of(context).size;

    const borderRadius = Radius.circular(15);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kBlackColor.withOpacity(.90),
          borderRadius: const BorderRadius.only(
              topLeft: borderRadius,
              topRight: borderRadius,
              bottomLeft: borderRadius,
              bottomRight: borderRadius),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 10,
                offset: const Offset(0, 5))
          ]),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 20, color: Colors.white),
        decoration: InputDecoration(
            floatingLabelStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
            enabledBorder: border,
            focusedBorder: border,
            errorBorder: border.copyWith(
                borderSide: const BorderSide(color: Colors.transparent)),
            focusedErrorBorder: border.copyWith(
                borderSide: const BorderSide(color: Colors.transparent)),
            isDense: true,
            label: label != null ? Text(label!) : null,
            hintText: hint,
            errorText: errorMessage,
            focusColor: colors.primary,
            icon: Icon(
              iconPrincipal,
              color: const Color.fromARGB(255, 58, 57, 57),
            ),
            suffixIcon: IconButton(
                onPressed: onPressedIcon,
                icon: Icon(iconSecundario,
                    color: const Color.fromARGB(255, 58, 57, 57)))),
      ),
    );
  }
}
