import 'package:smiles_per_gallon/extra/exports.dart';

class DpHoldingWidget extends StatelessWidget {
  const DpHoldingWidget({required this.radius,this.img, Key? key}) : super(key: key);
  final String? img;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: const AssetImage('assets/images/DefaultImgForUser.png',),
      child:img==null?const SizedBox(): Image(
        image: MemoryImage(
          const Base64Decoder().convert(
            img!,
          ),
        ),
      ),
    );
  }
}
