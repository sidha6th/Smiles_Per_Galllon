import 'package:smiles_per_gallon/extra/exports.dart';

class ClassiFiedsPage extends StatelessWidget {
  const ClassiFiedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 19.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  splashColor: transp,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_list_outlined,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  constraints:
                      const BoxConstraints(maxWidth: 150, minWidth: 70),
                  child: const CupertinoSearchTextField(),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 140,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 190,
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
