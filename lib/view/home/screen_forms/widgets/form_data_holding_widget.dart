import 'package:smiles_per_gallon/extra/exports.dart';

class FormDataHoldingWidget extends StatelessWidget {
  const FormDataHoldingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 80,
          child: Column(
            children: <Widget>[
              const DpHoldingWidget(
                radius: 17,
              ),
              Column(
                children: <Widget>[
                  VoteButtonWidget(
                    voteTo: () {
                      debugPrint('vote up pressed');
                    },
                    icon: Icons.arrow_upward,
                  ),
                  const CustomTextWidget(
                    text: '0',
                    size: 30,
                  ),
                  VoteButtonWidget(
                    voteTo: () {
                      debugPrint('vote down pressed');
                    },
                    icon: Icons.arrow_downward,
                  )
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      CustomTextWidget(
                        text: FormPageState.personName,
                      ),
                      CustomTextWidget(
                        text: FormPageState.sampleDate,
                      ),
                    ],
                  )
                ],
              ),
              space10,
              const CustomTextWidget(
                text: FormPageState.sampleHeading,
                textColor: lightBlue,
                size: 20,
                maxlines: 30,
              ),
              space10,
              const CustomTextWidget(
                text: FormPageState.dumyFormContent,
                maxlines: 1000,
              ),
              space10,
            ],
          ),
        ),
      ],
    );
  }
}
