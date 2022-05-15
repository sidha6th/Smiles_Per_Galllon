import 'package:smiles_per_gallon/extra/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        reverse: true,
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
            heading: 'Log In',
            buttonText: 'Sign Up',
          ),
          space10,
          const MainBannerImgHoldingwidget(),
          space10,
          CustomTextFormField(
            hintText: 'Email ID',
            controller: LoginState.emailController,
          ),
          space10,
          CustomPasswordTextFormFieldWidget(
            hintText: 'Password',
            obscureControll: true,
            controller: LoginState.passwordController,
          ),
          space10,
          Column(
            children: const <Widget>[
              CustomSubmitButton(
                buttonText: 'Log In',
              ),
            ],
          ),
          CustomTextButtonWidget(
              navigationTo: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PhoneNumberLoginPage(),
                  ),
                );
              },
              buttonText: 'Log In with OTP')
        ].reversed.toList(),
      ),
    );
  }
}
