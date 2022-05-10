import 'package:smiles_per_gallon/extra/exports.dart';


void main() => runApp(const SmilesPerGallon());

class SmilesPerGallon extends StatelessWidget {
  const SmilesPerGallon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const SignUpScreen(),
    );
  }
}
