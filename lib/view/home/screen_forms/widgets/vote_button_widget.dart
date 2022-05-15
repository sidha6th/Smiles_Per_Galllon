import 'package:smiles_per_gallon/extra/exports.dart';

class VoteButtonWidget extends StatelessWidget {
  const VoteButtonWidget({
    required this.voteTo,
    required this.icon,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final Function voteTo;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        voteTo();
      },
      icon: Icon(icon),
    );
  }
}
