import 'package:smiles_per_gallon/extra/exports.dart';

class LayoutState {
  static late final TabController tabController;
  static final ScrollController scrollController = ScrollController(
    initialScrollOffset: 0,
  );
  static final DraggableScrollableController dragableScrollableSheetController =
      DraggableScrollableController();
}
