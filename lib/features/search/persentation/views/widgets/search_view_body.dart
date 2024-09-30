import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/persentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/persentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyel18,
          ),
          SizedBox(
            height: 16,
          ),
          SearchResultListView(),
        ],
      ),
    );
  }
}
