import 'package:smiles_per_gallon/extra/exports.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: LayoutState.homeListPadding,
        itemCount: 20,
        itemBuilder: (_, index) => const DataHoldingCard(),
        separatorBuilder: (_, index) => space10,
      ),
    );
  }
}
