import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../domain/models/article_model.dart';
import '../../../domain/repository/article_repository.dart';
import '../../../infrastructure/repository/article_min_rest_repository.dart';

class RoutineController extends GetxController {
  final ArticleRepository _repository = ArticleRepositoryImpl(http.Client());
  final count = 0.obs;
  final daysInMonth =
      DateUtils.getDaysInMonth(DateTime.now().year, DateTime.now().month);
  final currentDateIndex = 0.obs;
  final List<DateTime> dateList = <DateTime>[].obs;
  final ScrollController calendarScrollController = ScrollController();
  final articles = <Article>[].obs;
  final isLoading = true.obs;
  final error = ''.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    getDateList();
    changeSelectedDate(DateTime.now().day - 1);
    Future.delayed(const Duration(milliseconds: 200), () {
      scrollToSelectedDate();
    });
    await fetchArticles();
  }

  List<DateTime> getDateList() {
    DateTime currentDate = DateTime.now();
    for (int i = -7; i <= 7; i++) {
      dateList.add(currentDate.add(Duration(days: i)));
    }
    return dateList;
  }

  void changeSelectedDate(int index) {
    currentDateIndex.value = index;
  }

  //region Calendar Scroll
  void scrollToSelectedDate() {
    calendarScrollController.animateTo(
      (currentDateIndex.value * 30).toDouble(),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  Future<void> fetchArticles() async {
    try {
      isLoading.value = true;
      final result = await _repository.fetchArticles();
      result.fold(
        (errorMessage) => error.value = errorMessage,
        (articleList) {
          articles.assignAll(articleList);
          print('Fetched articles: ${articles.length}');
          for (var article in articles) {
            print("Article: ${article.toString()}, Category: ${article.category}");
          }
        },
      );
    } catch (e) {
      error.value = 'Failed to load articles';
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }
}
