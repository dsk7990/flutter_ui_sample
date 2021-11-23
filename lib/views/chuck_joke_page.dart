import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_sample/controller/add_page_controller.dart';
import 'package:flutter_ui_sample/model/chuck_joke_model.dart';
import 'package:flutter_ui_sample/networking/widget/error_widget.dart';
import 'package:flutter_ui_sample/networking/api_response.dart';
import 'package:flutter_ui_sample/networking/widget/loading_widget.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ChuckJokePage extends StatelessWidget {
  AddPageController addPageController = Get.find();

  ChuckJokePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    addPageController.getRandomJokescategoryWise();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(addPageController.selectedCategory.value),
        actions: [
          InkWell(
            onTap: () {
              addPageController.getRandomJokescategoryWise();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Obx(() {
        Status status = addPageController.apiResponseJoke.value.status;
        switch (status) {
          case Status.LOADING:
            return Loading(
                loadingMessage:
                    addPageController.apiResponseJoke.value.message);
          case Status.COMPLETED:
            var data =
                addPageController.apiResponseJoke.value.data as ChuckJoke;

            // return Text(
            //   data.categories!.length.toString(),
            //   style: TextStyle(color: Colors.white),
            // );
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  height: 100,
                  width: 100,
                  imageUrl: data.iconUrl!,
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                Text(
                  data.value.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                ),
              ],
            );
          case Status.ERROR:
            return Error(
              errorMessage: addPageController.apiResponseJoke.value.message,
              onRetryPressed: () {},
            );
        }
      }),
    );
  }
}
