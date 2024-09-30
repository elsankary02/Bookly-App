import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentation/view/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSections extends StatelessWidget {
  const SimilarBooksSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text('You Can Also Like',
            style: Styles.textStyel14.copyWith(
              fontWeight: FontWeight.w600,
            )),
        const SizedBox(
          height: 16,
        ),
        const SimilerBooksListView(),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
