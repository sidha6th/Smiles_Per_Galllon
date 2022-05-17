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
    return SizedBox(
      height: 200,
      width: context.getSize().width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            width: context.getSize().width / 2 - 10,
            child: Center(
              child: CustomTextWidget(
                text: textData,
                textColor: black,
                size: 23,
                maxlines: 9,
              ),
            ),
          ),
          Center(
            child: Image(
              width: context.getSize().width / 2 - 10,
              image: AssetImage(logo),
            ),
          ),
        ],
      ),
    );
  }
}
