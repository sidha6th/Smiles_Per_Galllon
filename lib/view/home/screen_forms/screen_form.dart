import 'package:smiles_per_gallon/extra/exports.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

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
            child: ListView.separated(
              padding: LayoutState.homeListPadding,
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (_, index) => const FormDataHoldingWidget(),
              separatorBuilder: (_, index) => space10,
            ),
          ),
        ],
      ),
      //bottomSheet: Container(),
    );
  }
}
