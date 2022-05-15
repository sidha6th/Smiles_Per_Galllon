import 'package:smiles_per_gallon/extra/exports.dart';

class MainBannerImgHoldingwidget extends StatelessWidget {
  const MainBannerImgHoldingwidget({
    this.isIntro = false,
    Key? key,
  }) : super(key: key);
  final bool isIntro;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MediaQuery.of(context).viewInsets.bottom == 0 ? true : false,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Image.asset(
          'assets/images/SMILES PER GALLON.png',
          width:isIntro?40: double.infinity,
          height:isIntro?50:MediaQuery.of(context).size.height * 0.3,
        ),
      ),
    );
  }
}
