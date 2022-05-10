import 'package:smiles_per_gallon/extra/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: <Widget>[
              PreferredSize(
                child: Row(
                  children: <Widget>[
                    const CustomTextWidget(
                      text: 'Log In',
                      textColor: black,
                      weight: FontWeight.bold,
                      size: 20,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const CustomTextWidget(
                        text: 'Sign Up',
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
              SizedBox(
                width: double.infinity,
                height: 200,
                child: FittedBox(
                  child: Image.asset(
                    'assets/images/SMILES PER GALLON.png',
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      CustomTextFormField(
                        hintText: 'Email ID',
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      CustomPasswordTextFormFieldWidget(
                        hintText: 'Password',
                      ),
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
