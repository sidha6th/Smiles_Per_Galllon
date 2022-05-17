import 'package:smiles_per_gallon/extra/exports.dart';

bool chat = true;

class IndividualChatScreen extends StatelessWidget {
  const IndividualChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          centerTitle: true,
          leading: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: themeData.iconTheme.color,
                ),
              ),
              const DpHoldingWidget(
                radius: 15,
              ),
            ],
          ),
          title: CustomTextWidget(
            text: 'person name',
            textColor: themeData.textTheme.bodySmall?.color,
            size: 20,
            weight: FontWeight.bold,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                shrinkWrap: true,
                reverse: true,
                itemCount: 30,
                itemBuilder: (_, index) => Row(
                  mainAxisAlignment:
                      chat ? MainAxisAlignment.start : MainAxisAlignment.end,
                  children: <Widget>[
                    chat ? const RecieveMsgHolder() : const SentMsgHolder(),
                  ].reversed.toList(),
                ),
                separatorBuilder: (_, index) => space10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: context.getSize().width * 0.85,
                    child: CustomTextFormField(
                      hintText: '',
                      borderRadius: 25,
                      controller: ChatState.chatController,
                    ),
                  ),
                  FittedBox(
                    child: CircleAvatar(
                      minRadius: 10,
                      maxRadius: 20,
                      backgroundColor: lightBlue,
                      child: IconButton(
                        icon: const Icon(
                          Icons.send,
                          color: black,
                        ),
                        onPressed: () {
                          debugPrint(ChatState.chatController.text);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
