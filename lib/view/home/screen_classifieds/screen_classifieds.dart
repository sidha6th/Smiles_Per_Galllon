import 'package:smiles_per_gallon/extra/exports.dart';

class ClassiFiedsPage extends StatelessWidget {
  const ClassiFiedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              top: 19.0,
            ),
            child: UserControllbarWidget(),
          ),
          Expanded(
            child: GridView.builder(
              padding: LayoutState.homeListPadding,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 120,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 180,
              ),
              itemCount: 20,
              itemBuilder: (_, index) => Container(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
