import 'package:smiles_per_gallon/extra/exports.dart';

class OnBoardCardWidget extends StatelessWidget {
  const OnBoardCardWidget({
    required this.textData,
    required this.logo,
    Key? key,
  }) : super(key: key);
  final String textData;
  final String logo;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 200,
      width: size.width,
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            width: size.width / 2,
            child: Center(
              child: CustomTextWidget(
                text: textData,
                textColor: black,
                size: 23,
              ),
            ),
          ),
          Center(
            child: Image(
              width: size.width / 2,
              image: AssetImage(logo),
            ),
          ),
        ],
      ),
    );
  }
}
