import 'package:smiles_per_gallon/extra/exports.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    this.onTap,
    this.hintText = '',
    this.sufix = const SizedBox(),
    this.obscure = false,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final bool obscure;
  final Widget sufix;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        onTap != null ? onTap!() : () {};
      },
      obscureText: obscure,
      cursorColor: lightBlue,
      cursorHeight: 14,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: sufix,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          gapPadding: 0,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 0,
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 0,
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: lightBlue,
            style: BorderStyle.solid,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          gapPadding: 0,
        ),
      ),
    );
  }
}
