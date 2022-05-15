import 'package:smiles_per_gallon/extra/exports.dart';

class CustomFakeAppBarWidget extends StatelessWidget {
  const CustomFakeAppBarWidget({
    required this.navigationTo,
    required this.heading,
    required this.buttonText,
    this.isIntro = false,
    Key? key,
  }) : super(key: key);
  final String heading;
  final String buttonText;
  final Function navigationTo;
  final bool isIntro;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        title: isIntro == true
            ? Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: MainBannerImgHoldingwidget(
                  isIntro: isIntro,
                ),
              )
            : CustomTextWidget(
                text: heading,
                textColor: black,
                weight: FontWeight.bold,
                size: 20,
              ),
        actions: [
          CustomTextButtonWidget(
            navigationTo: navigationTo,
            buttonText: buttonText,
          ),
        ],
      ),
      preferredSize: const Size(
        double.infinity,
        50,
      ),
    );
  }
}
