import 'package:flutter/material.dart';
import 'package:medical_consultation/features/shared/widgets/search_widget.dart';

class SearchConsultaionField extends StatefulWidget {
  const SearchConsultaionField({super.key});

  @override
  SearchConsultaionFieldState createState() => SearchConsultaionFieldState();
}

class SearchConsultaionFieldState extends State<SearchConsultaionField> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchWidget(
      searchController: searchController,
    );
  }
}
