import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/features/conversations/widgets/conversation_app_bar.dart';
import 'package:medical_consultation/features/conversations/widgets/conversation_list.dart';
import 'package:medical_consultation/features/conversations/widgets/search_conversation.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(),
      appBar: conversationAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: const [
              SearchConversation(),
              SizedBox(
                height: 10,
              ),
              ConversationListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
