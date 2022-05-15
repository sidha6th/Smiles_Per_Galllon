import 'package:smiles_per_gallon/extra/exports.dart';


class OtpFormFieldWidget extends StatelessWidget {
  const OtpFormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Pinput(
        onCompleted: (String otp) {
          debugPrint(otp);
        },
        length: 5,
        closeKeyboardWhenCompleted: true,
        defaultPinTheme: const PinTheme(
          textStyle: TextStyle(fontSize: 30),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: grey,
                width: 2,
              ),
              right: BorderSide.none,
              left: BorderSide.none,
              top: BorderSide.none,
            ),
          ),
        ),
        focusedPinTheme: const PinTheme(
          textStyle: TextStyle(fontSize: 30),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: black,
                width: 2,
              ),
              right: BorderSide.none,
              left: BorderSide.none,
              top: BorderSide.none,
            ),
          ),
        ),
        submittedPinTheme: const PinTheme(
          textStyle: TextStyle(fontSize: 30),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: lightBlue,
                width: 2,
              ),
              right: BorderSide.none,
              left: BorderSide.none,
              top: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
