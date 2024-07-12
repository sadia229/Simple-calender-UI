import '../models/article_model.dart';
import 'package:dartz/dartz.dart';

abstract class ArticleRepository {
  Future<Either<String, List<Article>>> fetchArticles();
}
