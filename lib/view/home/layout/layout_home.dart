import 'package:smiles_per_gallon/extra/exports.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    LayoutState.tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
    LayoutState.dragableScrollableSheetController =
        DraggableScrollableController();
    super.initState();
  }

  @override
  void dispose() {
    LayoutState.tabController.dispose();
    LayoutState.dragableScrollableSheetController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
        controller: LayoutState.scrollController,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, bool isbool) {
          return [
            HomeAppBarWidget(
              tabController: LayoutState.tabController,
            )
          ];
        },
        body: Stack(
          fit: StackFit.expand,
          children: [
            TabBarView(
              controller: LayoutState.tabController,
              children: <Widget>[
                const NewsScreen(),
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
            const MainChatHoldingWidgetSheet(),
          ],
        ),
      ),
    );
  }
}
