import 'package:smiles_per_gallon/extra/exports.dart';

bool obscureIcon = false;

class CustomPasswordTextFormFieldWidget extends StatelessWidget {
  const CustomPasswordTextFormFieldWidget({
    required this.hintText,
    this.confirmPassfocusNode,
    this.focusNode,
    required this.controller,
    this.obscureControll = false,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final bool obscureControll;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final FocusNode? confirmPassfocusNode;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, changeState) {
        return TextFormField(
          onEditingComplete: () {
            FocusScope.of(context).requestFocus(focusNode);
          },
          focusNode: confirmPassfocusNode,
          textInputAction: TextInputAction.next,
          controller: controller,
          cursorColor: lightBlue,
          cursorHeight: 17,
          obscureText: LoginState.shoudObscurePass,
          onChanged: (String? value) {
            (obscureControll && value != null && value.isNotEmpty)
                ? changeState(() {
                    obscureIcon = true;
                  })
                : changeState(() {
                    obscureIcon = false;
                  });
          },
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 0,
            ),
            suffixIcon: (obscureControll && obscureIcon)
                ? IconButton(
                    splashColor: transp,
                    icon: Icon(
                      LoginState.shoudObscurePass
                          ? LoginState.hidePasswordIcn
                          : LoginState.showPasswordIcn,
                      color: grey,
                    ),
                    onPressed: () {
                      changeState(
                        () {
                          LoginState.shoudObscurePass
                              ? LoginState.shoudObscurePass = false
                              : LoginState.shoudObscurePass = true;
                        },
                      );
                    },
                  )
                : emptyBx,
            focusedBorder: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: lightBlue,
                style: BorderStyle.solid,
              ),
            ),
            border: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: black,
                style: BorderStyle.solid,
              ),
            ),
          ),
        );
      },
    );
  }
}
