import 'package:smiles_per_gallon/extra/exports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        reverse: true,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        shrinkWrap: true,
        children: <Widget>[
          CustomFakeAppBarWidget(
            navigationTo: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const LoginScreen(),
                ),
              );
            },
            heading: 'Sign Up',
            buttonText: 'Log In',
          ),
          const MainBannerImgHoldingwidget(),
          SizedBox(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomTextFormField(
                  hintText: 'Username',
                  controller: SignUpState.nameController,
                ),
                space10,
                CustomTextFormField(
                  hintText: 'Email ID',
                  controller: SignUpState.emailController,
                ),
                space10,
                CustomTextFormField(
                  hintText: 'Phone Number',
                  controller: SignUpState.phoneNumberController,
                ),
                space10,
                CustomPasswordTextFormFieldWidget(
                  hintText: 'Password',
                  obscureControll: true,
                  controller: SignUpState.passwordController,
                  focusNode: SignUpState.confirmPassfocusNode,
                ),
                space10,
                CustomPasswordTextFormFieldWidget(
                  hintText: 'Confirm Password',
                  controller: SignUpState.confirmPasswordController,
                  confirmPassfocusNode: SignUpState.confirmPassfocusNode,
                ),
                space10,
                const CustomSubmitButton(
                  buttonText: 'Sign Up',
                ),
              ],
            ),
          ),
        ].reversed.toList(),
      ),
    );
  }
}
