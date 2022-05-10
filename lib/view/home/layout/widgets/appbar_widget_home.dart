import 'package:smiles_per_gallon/extra/exports.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    required this.tabController,
    Key? key,
  }) : super(key: key);
  final TabController? tabController;

  @override
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: transp,
      leading: const CircleAvatar(),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chat_bubble_outline_outlined,
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
