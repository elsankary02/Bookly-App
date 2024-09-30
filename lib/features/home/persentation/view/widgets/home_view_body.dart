import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/persentation/view/widgets/newset_list_view.dart';
import 'package:bookly_app/features/home/persentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/persentation/view/widgets/featurd_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                FeaturdBooksListView(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Newset Books',
                    style: Styles.textStyel18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: NewsetListView(),
            ),
          )
        ],
      ),
    );
  }
}
