import 'package:smiles_per_gallon/extra/exports.dart';

class PhoneNumberLoginPage extends StatelessWidget {
  const PhoneNumberLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
          CustomTextFormField(
            hintText: 'Mobile Number',
            keyboardType: TextInputType.phone,
            controller: PhoneLoginState.phoneNumberController,
          ),
          space10,
          const CustomSubmitButton(
            buttonText: 'Sent OTP',
          ),
        ],
      ),
    );
  }
}
