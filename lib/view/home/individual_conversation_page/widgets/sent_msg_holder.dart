import 'package:smiles_per_gallon/extra/exports.dart';

class SentMsgHolder extends StatelessWidget {
  const SentMsgHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      constraints: BoxConstraints(
        minWidth: 10,
        maxWidth: context.getSize().width * 0.8,
      ),
      decoration: const BoxDecoration(
        color: darkBlue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: const CustomTextWidget(
        size: 17,
        text: 'sdfsdfsdfsdf',
        textColor: white,
      ),
    );
  }
}
