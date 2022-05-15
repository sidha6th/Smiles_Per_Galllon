import 'package:smiles_per_gallon/extra/exports.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    required this.text,
    this.underline = TextDecoration.none,
    this.overflow = TextOverflow.ellipsis,
    this.textColor,
    this.size = 16,
    this.weight = FontWeight.normal,
    this.maxlines,
    Key? key,
  }) : super(key: key);
  final String text;
  final FontWeight weight;
  final Color? textColor;
  final int? maxlines;
  final double size;
  final TextOverflow overflow;
  final TextDecoration underline;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxlines,
      overflow: overflow,
      style: TextStyle(
        color: textColor,
        fontWeight: weight,
        fontSize: size,
        decoration: underline,
      ),
    );
  }
}
