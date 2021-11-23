import 'package:flutter_ui_sample/model/chuck_categories_model.dart';
import 'package:flutter_ui_sample/model/chuck_joke_model.dart';

import 'api_provider.dart';

class Repository {
  final ApiProvider _provider = ApiProvider();

  Future<ChuckJoke> fetchChuckJoke(String category) async {
    final response = await _provider.get("jokes/random?category=" + category);
    return ChuckJoke.fromJson(response);
  }

  Future<ChuckCategories> fetchChuckCategoryData() async {
    final response = await _provider.get("jokes/categories");
    return ChuckCategories.fromJson(response);
  }
}
