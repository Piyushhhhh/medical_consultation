import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/features/shared/widgets/search_widget.dart';

class SearchConversation extends StatefulWidget {
  const SearchConversation({super.key});

  @override
  State<SearchConversation> createState() => _SearchConversationState();
}

class _SearchConversationState extends State<SearchConversation> {
  final TextEditingController conversationSearchController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.77,
            child:
                SearchWidget(searchController: conversationSearchController)),
        const SizedBox(
          width: 15,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColors.containerBackground(),
              borderRadius: BorderRadius.circular(12)),
          child: Icon(
            Icons.edit_square,
            size: 27,
            color: AppColors.primary(),
          ),
        )
      ],
    );
  }
}
