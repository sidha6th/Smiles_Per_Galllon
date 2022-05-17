import 'package:smiles_per_gallon/extra/exports.dart';

class MainChatHoldingWidgetSheet extends StatelessWidget {
  const MainChatHoldingWidgetSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => DraggableScrollableSheet(
        initialChildSize: 0.05,
        maxChildSize: 1,
        minChildSize: 0.05,
        snap: true,
        controller: LayoutState.dragableScrollableSheetController,
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              controller: scrollController,
              itemCount: 21,
              itemBuilder: (_, index) => index == 0
                  ? IconButton(
                      padding: const EdgeInsets.only(bottom: 10),
                      onPressed: () {
                        LayoutState.dragableScrollableSheetController!
                                    .size >=
                                0.5
                            ? LayoutState
                                .dragableScrollableSheetController!
                                .reset()
                            : LayoutState
                                .dragableScrollableSheetController!
                                .animateTo(
                                0.5,
                                duration: const Duration(
                                  milliseconds: 100,
                                ),
                                curve: Curves.bounceOut,
                              );
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_up,
                      ),
                    )
                  : ListTile(
                      leading: const DpHoldingWidget(radius: 20),
                      title: Text(
                        'Person ${index - 1}'.toString(),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const IndividualChatScreen(),
                          ),
                        );
                      },
                    ),
              separatorBuilder: (_, index) => space10,
            ),
          );
        },
      );
}
