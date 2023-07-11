import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/strings.dart';

class SearchConsultaionField extends StatefulWidget {
  const SearchConsultaionField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchConsultaionFieldState createState() => _SearchConsultaionFieldState();
}

class _SearchConsultaionFieldState extends State<SearchConsultaionField> {
  TextEditingController searchController = TextEditingController();
  bool _isSearchFieldEmpty = true;

  @override
  void initState() {
    super.initState();
    searchController.addListener(_onSearchTextChanged);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _onSearchTextChanged() {
    setState(() {
      _isSearchFieldEmpty = searchController.text.isEmpty;
    });
  }

  void _clearSearchField() {
    setState(() {
      searchController.clear();
      _isSearchFieldEmpty = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Perform search action here
            },
          ),
          Expanded(
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: Strings.searchHere,
              ),
            ),
          ),
          Visibility(
            visible: !_isSearchFieldEmpty,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: _clearSearchField,
            ),
          ),
        ],
      ),
    );
  }
}
