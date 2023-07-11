import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/strings.dart';

class SearchWidget extends StatefulWidget {
  final TextEditingController searchController;
  const SearchWidget({super.key, required this.searchController});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  bool _isSearchFieldEmpty = true;

  @override
  void initState() {
    super.initState();
    widget.searchController.addListener(_onSearchTextChanged);
  }

  @override
  void dispose() {
    widget.searchController.dispose();
    super.dispose();
  }

  void _onSearchTextChanged() {
    setState(() {
      _isSearchFieldEmpty = widget.searchController.text.isEmpty;
    });
  }

  void _clearSearchField() {
    setState(() {
      widget.searchController.clear();
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
              controller: widget.searchController,
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
