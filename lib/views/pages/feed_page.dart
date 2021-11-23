import 'package:flutter/material.dart';
import 'package:flutter_ui_sample/model/video_model.dart';
import 'package:flutter_ui_sample/widget/video_item_widget.dart';

class FeedPage extends StatelessWidget {
  FeedPage({Key? key}) : super(key: key);
  PageController controller = PageController(initialPage: 0);
  List<VideoModel> videoList = [
    VideoModel(
        title: 'title1',
        bgColor: Colors.red,
        videoUrl: 'https://cdn.wallpapersafari.com/64/48/CbDnw3.jpg'),
    VideoModel(
        title: 'title2',
        bgColor: Colors.yellow,
        videoUrl: 'https://wallpapercave.com/wp/wp2722825.jpg'),
    VideoModel(
        title: 'title3',
        bgColor: Colors.black,
        videoUrl:
            'https://www.pixelstalk.net/wp-content/uploads/2016/08/1080-x-1920-HD-Wallpaper-Vertical.jpg'),
    VideoModel(
        title: 'title4',
        bgColor: Colors.blue,
        videoUrl:
            'https://www.teahub.io/photos/full/99-994871_hd-vertical-wallpapers-page-full-hd-wallpaper-hd.jpg'),
    VideoModel(
        title: 'title5',
        bgColor: Colors.green,
        videoUrl: 'https://wallpaperaccess.com/full/1559254.png')
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      controller: controller,
      itemCount: videoList.length,
      itemBuilder: (context, position) {
        return VideoItemWidget(
          videoModel: videoList[position],
        );
      },
    );
  }
}
