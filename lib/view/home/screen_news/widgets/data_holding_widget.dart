import 'package:smiles_per_gallon/extra/exports.dart';

class DataHoldingCard extends StatelessWidget {
  const DataHoldingCard({
    this.heading,
    this.content,
    this.image,
    Key? key,
  }) : super(key: key);
  final String? heading;
  final String? image;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ImgHoldingWidget(),
        const CustomTextWidget(
          text: NewsPageState.content,
          maxlines: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            CustomTextButtonWidget(
              navigationTo: () {},
              buttonText: 'More',
              textUnderline: TextDecoration.underline,
            )
          ],
        ),
      ],
    );
  }
}
