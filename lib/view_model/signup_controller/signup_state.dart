import 'package:smiles_per_gallon/extra/exports.dart';

class SignUpState {
  static final TextEditingController _nameController = TextEditingController();
  static final TextEditingController _emailController = TextEditingController();
  static final TextEditingController _phoneNumberController =
      TextEditingController();
  static final TextEditingController _passwordController =
      TextEditingController();
  static final TextEditingController _confirmPasswordController =
      TextEditingController();
  static TextEditingController get nameController => _nameController;
  static TextEditingController get emailController => _emailController;
  static TextEditingController get phoneNumberController =>
      _phoneNumberController;
  static TextEditingController get passwordController => _passwordController;
  static TextEditingController get confirmPasswordController =>
      _confirmPasswordController;
//*=======================================================================*//
  static final FocusNode confirmPassfocusNode=FocusNode();
}
