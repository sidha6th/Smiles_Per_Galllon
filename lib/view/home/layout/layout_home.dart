import 'package:smiles_per_gallon/extra/exports.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, bool isbool) {
          //print(isbool);
          return [
            HomeAppBarWidget(
              tabController: tabController,
            )
          ];
        },
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            SizedBox(
              height: size.height,
              width: size.width,
              child: const NewsScreen(),
            ),
            SizedBox(
              width: size.width,
              height: size.height,
              child: const ArticlesPage(),
            ),
            SizedBox(
              width: size.width,
              height: size.height,
              child: const FormPage(),
            ),
            SizedBox(
              width: size.width,
              height: size.height,
              child: const ClassiFiedsPage(),
            ),
          ],
        ),
      ),
    );
  }
}
