import 'package:smiles_per_gallon/extra/exports.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          CustomFakeAppBarWidget(
            navigationTo: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const SignUpScreen(),
                ),
              );
            },
            heading: 'Login',
            buttonText: 'Sign Up',
          ),
          space10,
          const MainBannerImgHoldingwidget(),
          space10,
          const OtpFormFieldWidget(),
          space10,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextButtonWidget(
                navigationTo: () {
                  debugPrint(
                    'resent otp button clicked',
                  );
                },
                buttonText: 'Resent OTP',
              )
            ],
          ),
          Column(
            children: const <Widget>[
              CustomSubmitButton(
                buttonText: 'Submit',
              ),
            ],
          )
        ],
      ),
    );
  }
}
