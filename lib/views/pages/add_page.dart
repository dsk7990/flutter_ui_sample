import 'package:flutter/material.dart';
import 'package:flutter_ui_sample/controller/add_page_controller.dart';
import 'package:flutter_ui_sample/model/chuck_categories_model.dart';
import 'package:flutter_ui_sample/networking/api_response.dart';
import 'package:flutter_ui_sample/networking/widget/error_widget.dart';
import 'package:flutter_ui_sample/networking/widget/loading_widget.dart';
import 'package:flutter_ui_sample/views/chuck_joke_page.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AddPage extends StatelessWidget {
  AddPage({Key? key}) : super(key: key);

  AddPageController addPageController = Get.isRegistered<AddPageController>()
      ? Get.find<AddPageController>()
      : Get.put(AddPageController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      Status status = addPageController.apiResponse.value.status;
      switch (status) {
        case Status.LOADING:
          return Loading(
              loadingMessage: addPageController.apiResponse.value.message);
        case Status.COMPLETED:
          var data =
              addPageController.apiResponse.value.data[0] as ChuckCategories;
          // var data1 =
          //     addPageController.apiResponse.value.data[1] as ChuckCategories;
          // return Text(
          //   data.categories!.length.toString(),
          //   style: TextStyle(color: Colors.white),
          // );
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.categories!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, position) {
                      return Card(
                        color: Colors.grey,
                        child: ListTile(
                          onTap: () {
                            addPageController.selectedCategory.value =
                                data.categories![position];
                            Get.to(() => ChuckJokePage());
                          },
                          title: Text(data.categories![position]),
                        ),
                      );
                    }),
                // ListView.builder(
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemCount: data1.categories!.length,
                //     shrinkWrap: true,
                //     itemBuilder: (context, position) {
                //       return Card(
                //         color: Colors.grey,
                //         child: ListTile(
                //           title: Text(data1.categories![position]),
                //         ),
                //       );
                //     }),
              ],
            ),
          );
        case Status.ERROR:
          return Error(
              errorMessage: addPageController.apiResponse.value.message,
              onRetryPressed: () {
                print('retry tapped');
                addPageController.fetchCategories();
              });
      }
    });
  }
}
