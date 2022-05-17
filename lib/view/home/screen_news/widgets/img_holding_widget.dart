import 'package:smiles_per_gallon/extra/exports.dart';

class ImgHoldingWidget extends StatelessWidget {
  const ImgHoldingWidget({
    this.img='',
    Key? key,
  }) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  transp,
                  Colors.black.withAlpha(
                    100,
                  ),
                ],
              ),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  NewsPageState.sampleImage,
                ),
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: CustomTextWidget(
                textColor: white,
                text: 'Kia Carens CNG spied; could launch this year',
                size: 30,
                maxlines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
