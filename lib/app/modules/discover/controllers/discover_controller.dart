import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/api/remote_service.dart';
import '../../../data/models/news_model.dart';

class DiscoverController extends GetxController {
  // var future = <Article>[].obs;
  late RxList<Article> articles;

  RxString searchTerm = ''.obs;
  var isSearching = true.obs;
  TextEditingController searchController = TextEditingController();
  // var searchTerm = ''.obs;
  // var searchController = TextEditingController();

  var categoryItems = [
    "GENERAL",
    "BUSINESS",
    "ENTERTAINMENT",
    "HEALTH",
    "SCIENCE",
    "SPORTS",
    "TECHNOLOGY",
  ];

  RxString selectedCategory = "GENERAL".obs;

  @override
  void onInit() {
    articles = <Article>[].obs;

    getNewsData();
    super.onInit();
  }

  Future<void> getNewsData() async {
    final newsAPI = NewsAPI("fdbf840272ef478ca1cda2f65c844b7f");
    articles.value = await newsAPI.getTopHeadlines(
      country: "us",
      query: searchTerm.value,
      category: selectedCategory.value,
      pageSize: 50,
    );
  }

  void setSearchTerm(String term) {
    searchTerm.value = term;
  }

  void changeCategory(String category) {
    selectedCategory.value = category;
    getNewsData();
  }

  void toggleSearch() {
    isSearching.value = !isSearching.value;
    if (!isSearching.value) {
      searchTerm.value = '';
      searchController.text = '';
      getNewsData();
    }
  }
}
