import 'package:bookly_app/core/utils/widgets/custom_cilculer_indicator.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/persentation/manger/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly_app/features/home/persentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerbooksCubit, SimilerbooksState>(
      builder: (context, state) {
        if (state is SimilerbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        }
        if (state is SimilerbooksFailuer) {
          return CustomErrorWidget(errorMessage: state.errormassege);
        } else {
          return const CustomCirculerProgressIndicator();
        }
      },
    );
  }
}
