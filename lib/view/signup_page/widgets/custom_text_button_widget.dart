import 'package:smiles_per_gallon/extra/exports.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({
    required this.navigationTo,
    required this.buttonText,
    this.textUnderline = TextDecoration.none,
    Key? key,
  }) : super(key: key);

  final Function navigationTo;
  final String buttonText;
  final TextDecoration textUnderline;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        navigationTo();
      },
      child: CustomTextWidget(
        text: buttonText,
        underline: textUnderline,
        textColor: lightBlue,
      ),
    );
  }
}
