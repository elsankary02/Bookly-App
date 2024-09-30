
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similerbooks_state.dart';

class SimilerbooksCubit extends Cubit<SimilerbooksState> {
  SimilerbooksCubit(this.homeRepo) : super(SimilerbooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchSimilerBooks({required String category}) async {
    emit(SimilerbooksLoading());
    final result = await homeRepo.fetchSimilerBooks(category: category);
    result.fold(
      (failuer) {
        emit(
          SimilerbooksFailuer(failuer.errorMessage),
        );
      },
      (books) {
        emit(
          SimilerbooksSuccess(books),
        );
      },
    );
  }
}
