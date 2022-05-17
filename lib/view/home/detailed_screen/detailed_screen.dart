import 'package:smiles_per_gallon/extra/exports.dart';

class DetailedScreen extends StatelessWidget {
  const DetailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        children: <Widget>[
          CustomFakeAppBarWidget(
            centerTitle: true,
            navigationTo: () {},
            heading: '',
            buttonText: '',
            leadingWidget: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: themeData.iconTheme.color,
              ),
            ),
            leadingWidth: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const DpHoldingWidget(
                radius: 20,
              ),
              space10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  CustomTextWidget(
                    text: 'name',
                  ),
                  CustomTextWidget(
                    text: 'date time',
                  ),
                ],
              ),
            ],
          ),
          space10,
          const ImgHoldingWidget(),
          space10,
          CustomTextWidget(
            text: NewsPageState.content * 100,
            maxlines: 100,
          ),
        ],
      ),
    );
  }
}
