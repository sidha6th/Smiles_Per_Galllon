import 'package:smiles_per_gallon/extra/exports.dart';

class LayoutState {
  static late final TabController tabController;
  static final ScrollController scrollController = ScrollController(
    initialScrollOffset: 0,
  );
  static  DraggableScrollableController? dragableScrollableSheetController;
  static const EdgeInsets homeListPadding = EdgeInsets.only(
    left: 10,
    right: 10,
    bottom: 25,
    top: 5,
  );
}
