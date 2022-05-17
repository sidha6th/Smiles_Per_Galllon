import 'package:smiles_per_gallon/extra/exports.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    required this.tabController,
    Key? key,
  }) : super(key: key);
  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: transp,
      foregroundColor: transp,
      leading: const DpHoldingWidget(
        radius: 13,
      ),
      title: Image.asset(
        'assets/images/vertical text logo img.png',
        width: double.infinity,
        height: context.getSize().height * 0.3,
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            LayoutState.dragableScrollableSheetController!.size >= 0.5
                ? LayoutState.dragableScrollableSheetController!.reset()
                : LayoutState.dragableScrollableSheetController!.animateTo(
                    0.5,
                    duration: const Duration(
                      milliseconds: 100,
                    ),
                    curve: Curves.bounceOut,
                  );
          },
          icon: const Icon(
            Icons.chat_bubble_outline_outlined,
            color: black,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          35,
        ),
        child: TabBar(
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16,
            ),
            color: lightBlue,
          ),
          controller: tabController,
          indicatorWeight: 0.1,
          labelPadding: const EdgeInsets.all(0.1),
          indicatorPadding: const EdgeInsets.all(1),
          labelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          unselectedLabelColor: themeData.textTheme.bodyText1?.color,
          labelColor: themeData == MyAppTheme.darkThemeData ? black : white,
          tabs: const <Widget>[
            Tab(
              text: 'NEWS',
            ),
            Tab(
              text: 'ARTICLE',
            ),
            Tab(
              text: 'FORM',
            ),
            Tab(
              text: 'CLASSIFIED',
            ),
          ],
        ),
      ),
    );
  }
}
