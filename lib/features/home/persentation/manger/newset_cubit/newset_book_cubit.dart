import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBookLoding());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (failuer) {
        emit(NewsetBookFailuer(failuer.errorMessage));
      },
      (books) {
        emit(NewsetBookSuccess(books));
      },
    );
  }
}
