import 'package:smiles_per_gallon/extra/exports.dart';

class LoginState {
  static String buttonText = '';
  static bool shoudObscurePass = true;
  static IconData showPasswordIcn = Icons.remove_red_eye_outlined;
  static IconData hidePasswordIcn = Icons.remove_red_eye;
  static final TextEditingController _emailController = TextEditingController();
  static final TextEditingController _passwordController =
      TextEditingController();
  static TextEditingController get emailController => _emailController;
  static TextEditingController get passwordController => _passwordController;
  static late Widget loginButtonState;
  static late Widget loginbuttonInitialState;
  static Widget getCustomTextWidget(String text) => CustomTextWidget(text: text);
  static const Widget loginButtonLodingState = SizedBox(
    height: 20,
    width: 20,
    child: CircularProgressIndicator(
      strokeWidth: 2,
      color: white,
    ),
  );
}
