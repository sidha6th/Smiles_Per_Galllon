import 'package:smiles_per_gallon/extra/exports.dart';

bool visible = false;

class CustomPasswordTextFormFieldWidget extends StatelessWidget {
  const CustomPasswordTextFormFieldWidget({
    required this.hintText,
    this.obscureControll = true,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final bool obscureControll;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, changeState) {
        return CustomTextFormField(
          onTap: () {
            changeState((){
              visible = true;
            });
          },
          hintText: hintText,
          obscure: LoginController.shoudObscurePass,
          sufix: (obscureControll && visible)
              ? IconButton(
                  icon: Icon(
                    LoginController.shoudObscurePass
                        ? LoginController.hidePasswordIcn
                        : LoginController.showPasswordIcn,
                    color: grey,
                  ),
                  onPressed: () {
                    changeState(
                      () {
                        LoginController.shoudObscurePass
                            ? LoginController.shoudObscurePass = false
                            : LoginController.shoudObscurePass = true;
                      },
                    );
                  },
                )
              : const SizedBox(),
        );
      },
    );
  }
}
