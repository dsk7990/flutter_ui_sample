import 'package:flutter_ui_sample/model/chuck_categories_model.dart';
import 'package:flutter_ui_sample/model/chuck_joke_model.dart';
import 'package:flutter_ui_sample/networking/api_response.dart';
import 'package:flutter_ui_sample/networking/repository.dart';
import 'package:get/get.dart';

class AddPageController extends GetxController {
  Repository repository = Repository();

  Rx<APIResponse> apiResponse =
      Rx<APIResponse>(APIResponse.loading('Getting Chuck.'));

  Rx<APIResponse> apiResponseJoke =
      Rx<APIResponse>(APIResponse.loading('Getting Joke.'));

  RxString selectedCategory = RxString('');

  @override
  void onInit() {
    // TODO: implement onInit
    fetchCategories();
    super.onInit();
  }

  fetchCategories() async {
    apiResponse.value = APIResponse.loading('Getting Chuck Categories.');
    try {
      ChuckCategories chuckCats = await repository.fetchChuckCategoryData();
      apiResponse.value = APIResponse.completed([chuckCats, chuckCats]);
      // update();
    } catch (e) {
      apiResponse.value = APIResponse.error(e.toString());
      // update();
      print(e);
    }
  }

  getRandomJokescategoryWise() async {
    apiResponseJoke.value = APIResponse.loading('Getting Chuck Joke.');
    try {
      ChuckJoke chuckCats =
          await repository.fetchChuckJoke(selectedCategory.value);
      apiResponseJoke.value = APIResponse.completed(chuckCats);
      // update();
    } catch (e) {
      apiResponseJoke.value = APIResponse.error(e.toString());
      // update();
      print(e);
    }
  }
}
