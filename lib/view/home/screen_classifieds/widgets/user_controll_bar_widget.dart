import 'package:smiles_per_gallon/extra/exports.dart';

class UserControllbarWidget extends StatelessWidget {
  const UserControllbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                splashColor: transp,
                onPressed: () {
                  showBottomSheet(
                    constraints: const BoxConstraints(
                      maxHeight: 200,
                      minHeight: 0,
                    ),
                    context: context,
                    builder: (_) => Wrap(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: const CustomTextWidget(
                            text: 'ALL',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: const CustomTextWidget(
                            text: 'YOUR QUESTION',
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(
                  Icons.filter_list_outlined,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                constraints: BoxConstraints(
                  maxWidth: context.getSize().width / 2,
                  minWidth: context.getSize().width / 5,
                ),
                child: const CupertinoSearchTextField(),
              ),
            ],
          ),
        ),
        IconButton(
          splashColor: transp,
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }
}
