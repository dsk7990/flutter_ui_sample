import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_sample/model/video_model.dart';
import 'package:flutter_ui_sample/widget/right_column_widget.dart';

import 'bottom_video_info_widget.dart';

class VideoItemWidget extends StatefulWidget {
  const VideoItemWidget({
    Key? key,
    required this.videoModel,
  }) : super(key: key);

  final VideoModel videoModel;

  @override
  State<VideoItemWidget> createState() => _VideoItemWidgetState();
}

class _VideoItemWidgetState extends State<VideoItemWidget> {
  // late CachedVideoPlayerController _cachedVideoPlayerController;
  // @override
  // void initState() {
  //   _cachedVideoPlayerController = CachedVideoPlayerController.network(
  //       "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
  //   _cachedVideoPlayerController.initialize().then((_) {
  //     setState(() {});
  //     _cachedVideoPlayerController.play();
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CachedNetworkImage(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          imageUrl: widget.videoModel.videoUrl.toString(),
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, downloadProgress) => Center(
            child: CircularProgressIndicator(
              value: downloadProgress.progress,
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        // Center(
        //     child: _cachedVideoPlayerController.value != null &&
        //             _cachedVideoPlayerController.value.initialized
        //         ? AspectRatio(
        //             child: CachedVideoPlayer(_cachedVideoPlayerController),
        //             aspectRatio: _cachedVideoPlayerController.value.aspectRatio,
        //           )
        //         : const Center(
        //             child: CircularProgressIndicator(),
        //           )),
        const RightColumn(),
        const BottomVideoInfo(),
      ],
    );
  }
}
