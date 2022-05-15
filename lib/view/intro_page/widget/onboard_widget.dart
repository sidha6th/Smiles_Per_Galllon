import 'package:smiles_per_gallon/extra/exports.dart';

class OnBoardWidget extends StatelessWidget {
  const OnBoardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
      initialPage: 0,
      viewportFraction: 1,
    );
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (int index) {
            IntroState.indexToChange.value = index;
          },
          controller: pageController,
          itemCount: IntroState.onBoardCardList.length,
          itemBuilder: (context, index) {
            return IntroState.onBoardCardList[index];
          },
        ),
        ValueListenableBuilder(
          valueListenable: IntroState.indexToChange,
          builder: (context, int index, _) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  index > 0
                      ? SizedBox(
                          width: 80,
                          child: CustomTextButtonWidget(
                            navigationTo: () {
                              pageController.previousPage(
                                duration: const Duration(
                                  milliseconds: 200,
                                ),
                                curve: Curves.easeIn,
                              );
                            },
                            buttonText: 'Previous',
                          ),
                        )
                      : const SizedBox(
                          width: 80,
                        ),
                  SizedBox(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        5,
                        (index) => CircleAvatar(
                          radius: 4,
                          backgroundColor: lightBlue,
                          child: CircleAvatar(
                            radius: 2,
                            backgroundColor:
                                index == IntroState.indexToChange.value
                                    ? lightBlue
                                    : white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  index < 4
                      ? SizedBox(
                          width: 80,
                          child: CustomTextButtonWidget(
                            navigationTo: () {
                              pageController.nextPage(
                                duration: const Duration(
                                  milliseconds: 200,
                                ),
                                curve: Curves.bounceIn,
                              );
                            },
                            buttonText: 'Next',
                          ),
                        )
                      : const SizedBox(
                          width: 80,
                        ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
