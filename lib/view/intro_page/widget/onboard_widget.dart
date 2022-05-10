import 'package:smiles_per_gallon/extra/exports.dart';

class OnBoardWidget extends StatelessWidget {
  const OnBoardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int indexToChange = 0;
    PageController pageController = PageController(
      initialPage: 0,
      viewportFraction: 1,
    );
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (int index) {
            indexToChange = index;
          },
          controller: pageController,
          itemCount: onBoardCardList.length,
          itemBuilder: (context, index) {
            return onBoardCardList[index];
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              indexToChange > 0
                  ? IconButton(
                      onPressed: () {
                        pageController.previousPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                    )
                  : const SizedBox(),
              indexToChange < 3
                  ? IconButton(
                      onPressed: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
