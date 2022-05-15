import 'package:smiles_per_gallon/extra/exports.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: CustomFakeAppBarWidget(
          navigationTo: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const SignUpScreen(),
              ),
            );
          },
          heading: '',
          isIntro: true,
          buttonText: 'Sign Up',
        ),
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  const IntroMainImgBannerWidget(),
                  const SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: OnBoardWidget(),
                  ),
                  const Spacer(),
                  CustomTextButtonWidget(
                    navigationTo: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      );
                    },
                    buttonText: 'Skip',
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
