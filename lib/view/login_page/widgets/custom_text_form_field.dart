import 'package:smiles_per_gallon/extra/exports.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.name,
    this.sufix = const SizedBox(),
    this.obscure = false,
    this.borderRadius=10,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final bool obscure;
  final Widget sufix;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      obscureText: obscure,
      cursorColor: lightBlue,
      cursorHeight: 17,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: sufix,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 0,
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 0,
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: lightBlue,
            style: BorderStyle.solid,
          ),
        ),
        border: OutlineInputBorder(
          gapPadding: 0,
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: black,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
