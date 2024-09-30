import 'package:bookly_app/core/errors/failuers.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewsetBooks() async {
    try {
      final data = await apiService.getbooks(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:computer');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(
        ServerFailuer(e.toString()),
      );
    }
  }

  @override
  fetchFeaturedBooks() async {
    try {
      final data = await apiService.getbooks(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(
        ServerFailuer(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchSimilerBooks(
      {required String category}) async {
    try {
      final data = await apiService.getbooks(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=relevance');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(
        ServerFailuer(e.toString()),
      );
    }
  }
}
