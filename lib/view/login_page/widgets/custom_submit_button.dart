import 'package:smiles_per_gallon/extra/exports.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    required this.buttonText,
    Key? key,
  }) : super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    LoginState.buttonText = buttonText;
    LoginState.loginButtonState =
        LoginState.getCustomTextWidget(buttonText);
    return StatefulBuilder(
      builder: (_, changeState) {
        return ElevatedButton(
          onPressed: () async {
            changeState(
              () {
                LoginState.loginButtonState =
                    LoginState.loginButtonLodingState;
              },
            );
            await Future.delayed(
              const Duration(
                seconds: 2,
              ),
              () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => const HomeLayout(),
                ),
                (_) => false,
              ),
            );
          },
          child: LoginState.loginButtonState,
        );
      },
    );
  }
}
