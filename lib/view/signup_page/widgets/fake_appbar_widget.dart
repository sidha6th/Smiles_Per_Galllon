import 'package:smiles_per_gallon/extra/exports.dart';

class CustomFakeAppBarWidget extends StatelessWidget {
  const CustomFakeAppBarWidget({
    required this.navigationTo,
    required this.heading,
    required this.buttonText,
    this.leadingWidth = 0,
    this.isIntro = false,
    this.leadingWidget = emptyBx,
    this.centerTitle=false,
    Key? key,
  }) : super(key: key);
  final String heading;
  final String buttonText;
  final Function navigationTo;
  final bool isIntro;
  final double leadingWidth;
  final Widget leadingWidget;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: AppBar(
        centerTitle: centerTitle,
        leadingWidth: leadingWidth,
        leading: leadingWidget,
        title: leadingWidth != 0
            ? Image.asset(
                'assets/images/vertical text logo img.png',
                width: isIntro ? 40 : double.infinity,
                height: isIntro ? 50 : MediaQuery.of(context).size.height * 0.3,
              )
            : isIntro == true
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
