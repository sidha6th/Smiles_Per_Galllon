import 'package:smiles_per_gallon/extra/exports.dart';

class IntroMainImgBannerWidget extends StatelessWidget {
  const IntroMainImgBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: const DecorationImage(
          colorFilter: ColorFilter.mode(
            Color.fromARGB(115, 0, 0, 0),
            BlendMode.color,
          ),
          image: AssetImage(
            'assets/images/8508208-Edit-1200x800.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: const FittedBox(
        child: Center(
          child: CustomTextWidget(
            text: ''' EVERY CAR GUY HAVE\nSOMETHING TO SHARE''',
            textColor: white,
            weight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
