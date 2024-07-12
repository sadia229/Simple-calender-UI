import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../domain/models/article_model.dart';
import '../../domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  static const String apiUrl = 'https://api.npoint.io/bc69ae1f6991da81ab9a';
  final http.Client _httpClient;

  ArticleRepositoryImpl(this._httpClient);

  @override
  Future<Either<String, List<Article>>> fetchArticles() async {
    try {
      final response = await _httpClient.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body)['data'];
        final articles = data.map((json) => Article(
          date: json['date'],
          name: json['name'],
          category: json['category'],
          location: json['location'],
        )).toList();
        return Right(articles);
      } else {
        return const Left('Failed to load articles');
      }
    } catch (e) {
      return const Left('Failed to connect to the server');
    }
  }
}
