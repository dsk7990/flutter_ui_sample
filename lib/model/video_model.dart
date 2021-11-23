import 'dart:ui';

class VideoModel {
  String title;
  Color? bgColor;
  String? videoUrl;

  VideoModel({required this.title, this.bgColor, this.videoUrl});

  String? get getTitle => this.title;

  set setTitle(String title) => this.title = title;

  get getBgColor => this.bgColor;

  set setBgColor(bgColor) => this.bgColor = bgColor;

  get getVideoUrl => this.videoUrl;

  set setVideoUrl(videoUrl) => this.videoUrl = videoUrl;
}
