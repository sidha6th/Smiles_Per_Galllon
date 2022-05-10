import 'package:smiles_per_gallon/extra/exports.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IntroMainImgBannerWidget(),
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: OnBoardWidget(),
          ),
        ],
      ),
    );
  }
}
