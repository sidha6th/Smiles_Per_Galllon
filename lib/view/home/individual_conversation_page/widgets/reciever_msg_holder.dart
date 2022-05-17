import 'package:smiles_per_gallon/extra/exports.dart';

class RecieveMsgHolder extends StatelessWidget {
  const RecieveMsgHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      constraints: BoxConstraints(
        minWidth: 10,
        maxWidth: MediaQuery.of(context).size.width * 0.8,
      ),
      decoration: const BoxDecoration(
        color: lightBlue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: const CustomTextWidget(
        size: 17,
        text: 'hjkdssd',
      ),
    );
  }
}
