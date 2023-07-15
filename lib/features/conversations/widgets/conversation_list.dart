import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/data/mock_data/conversation.dart';

class ConversationListWidget extends StatefulWidget {
  const ConversationListWidget({super.key});

  @override
  State<ConversationListWidget> createState() => _ConversationListWidgetState();
}

class _ConversationListWidgetState extends State<ConversationListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: userConversations.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: ListTile(
            tileColor: AppColors.containerBackground(),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            leading: FittedBox(
              child: Stack(
                alignment: const Alignment(1, 1.1),
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        userConversations[index].imageUrl ?? '',
                        scale: 1.3),
                  ),
                  Container(
                    constraints:
                        const BoxConstraints(minHeight: 15, minWidth: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.containerBackground(), width: 2),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 5,
                            color: Colors.black.withAlpha(50))
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: (userConversations[index].isOnline ?? false)
                          ? AppColors.positive()
                          : AppColors.fadeText(),
                    ),
                  ),
                ],
              ),
            ),
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "dr. ${userConversations[index].fullName}",
                  style: TextStyles.semibold16,
                ),
                Text(
                  "${userConversations[index].lastMessageTime}",
                  style: TextStyles.regular12.withFadeText(),
                ),
              ],
            ),
            subtitle: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "${userConversations[index].lastMessage}",
                    style: TextStyles.semibold14.withColor(
                        (userConversations[index].isOnline ?? false)
                            ? AppColors.text()
                            : AppColors.fadeText()),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text("${userConversations[index].unreadCount}",
                        style: TextStyles.regular12
                            .withColor(AppColors.containerBackground())),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
