import 'package:smiles_per_gallon/extra/exports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              PreferredSize(
                child: Row(
                  children: <Widget>[
                    const CustomTextWidget(
                      text: 'Sign Up',
                      textColor: black,
                      weight: FontWeight.bold,
                      size: 20,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const CustomTextWidget(
                        text: 'Log In',
                        textColor: lightBlue,
                      ),
                    ),
                  ],
                ),
                preferredSize: Size(
                  MediaQuery.of(context).size.width,
                  50,
                ),
              ),
              MediaQuery.of(context).viewInsets.bottom == 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                            maxHeight: 200, minHeight: 100),
                        child: FittedBox(
                          child: Image.asset(
                            'assets/images/SMILES PER GALLON.png',
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
              SingleChildScrollView(
                reverse: true,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      CustomTextFormField(
                        hintText: 'Username',
                      ),
                      space10,
                      CustomTextFormField(
                        hintText: 'Email ID',
                      ),
                      space10,
                      CustomTextFormField(
                        hintText: 'Phone Number',
                      ),
                      space10,
                      CustomPasswordTextFormFieldWidget(
                        hintText: 'Password',
                      ),
                      space10,
                      CustomPasswordTextFormFieldWidget(
                        hintText: 'Confirm Password',
                        obscureControll: false,
                      ),
                      space10,
                      CustomSubmitButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
