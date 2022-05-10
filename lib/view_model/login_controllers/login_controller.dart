import 'package:smiles_per_gallon/extra/exports.dart';

class LoginController {
  static bool shoudObscurePass = true;
  static IconData showPasswordIcn = Icons.remove_red_eye_outlined;
  static IconData hidePasswordIcn = Icons.remove_red_eye;

  static Widget loginButtonState = loginbuttonInitialState;
  static const Widget loginbuttonInitialState =
      CustomTextWidget(text: 'Log In');
  static const Widget loginButtonLodingState = SizedBox(
    height: 20,
    width: 20,
    child: CircularProgressIndicator(
      strokeWidth: 2,
      color: white,
    ),
  );
}
