import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Samsung",
    "iphone",
    "Xbox",
    "India",
    "Britain",
    "Sanm",
        "Iran",
    "Russia",
    "Ukraine",
    "Australia",
    "UnitedStates",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  Widget buildSelect(BuildContext context) {
    return ListTile(
      onTap: () {
        List<String>;
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var search in searchTerms) {
      if (search.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(search);
      }
    }
    //make list
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var search in searchTerms) {
      if (search.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(search);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
