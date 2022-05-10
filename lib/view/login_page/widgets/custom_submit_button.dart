import 'package:smiles_per_gallon/extra/exports.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (_, changeState) {
        return ElevatedButton(
          onPressed: () async {
            changeState(
              () {
                LoginController.loginButtonState =
                    LoginController.loginButtonLodingState;
              },
            );
            await Future.delayed(
              const Duration(seconds: 2),
              () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => const HomeLayout(),
                ),
                (_) => false,
              ),
            );
          },
          child: LoginController.loginButtonState,
        );
      },
    );
  }
}
