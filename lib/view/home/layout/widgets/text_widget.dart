import 'package:smiles_per_gallon/extra/exports.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    this.textColor = white,
    this.size = 16,
    this.weight = FontWeight.normal,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  final FontWeight weight;
  final Color textColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: weight,
        fontSize: size,
      ),
    );
  }
}
