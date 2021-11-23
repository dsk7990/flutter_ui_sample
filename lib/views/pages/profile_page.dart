import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  List<String> images = [
    'https://cdn.wallpapersafari.com/64/48/CbDnw3.jpg',
    'https://wallpapercave.com/wp/wp2722825.jpg',
    'https://www.pixelstalk.net/wp-content/uploads/2016/08/1080-x-1920-HD-Wallpaper-Vertical.jpg',
    'https://www.teahub.io/photos/full/99-994871_hd-vertical-wallpapers-page-full-hd-wallpaper-hd.jpg',
    'https://wallpaperaccess.com/full/1559254.png',
    'https://cdn.wallpapersafari.com/64/48/CbDnw3.jpg',
    'https://wallpapercave.com/wp/wp2722825.jpg',
    'https://www.pixelstalk.net/wp-content/uploads/2016/08/1080-x-1920-HD-Wallpaper-Vertical.jpg',
    'https://www.teahub.io/photos/full/99-994871_hd-vertical-wallpapers-page-full-hd-wallpaper-hd.jpg',
    'https://wallpaperaccess.com/full/1559254.png',
    'https://cdn.wallpapersafari.com/64/48/CbDnw3.jpg',
    'https://wallpapercave.com/wp/wp2722825.jpg',
    'https://www.pixelstalk.net/wp-content/uploads/2016/08/1080-x-1920-HD-Wallpaper-Vertical.jpg',
    'https://www.teahub.io/photos/full/99-994871_hd-vertical-wallpapers-page-full-hd-wallpaper-hd.jpg',
    'https://wallpaperaccess.com/full/1559254.png',
    'https://cdn.wallpapersafari.com/64/48/CbDnw3.jpg',
    'https://wallpapercave.com/wp/wp2722825.jpg',
    'https://www.pixelstalk.net/wp-content/uploads/2016/08/1080-x-1920-HD-Wallpaper-Vertical.jpg',
    'https://www.teahub.io/photos/full/99-994871_hd-vertical-wallpapers-page-full-hd-wallpaper-hd.jpg',
    'https://wallpaperaccess.com/full/1559254.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.yellow,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Don Basco',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Aweson quotes can be written here / Profile bio',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          const SizedBox(
            height: 10,
          ),
          _builldStats(),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemCount: images.length,
              itemBuilder: (context, position) {
                return Container(
                  height: 100,
                  color: Colors.white,
                  child: CachedNetworkImage(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    imageUrl: images[position],
                    fit: BoxFit.cover,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                      child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                );
              }),
        ],
      ),
    );
  }

  Widget _builldStats() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: SizedBox(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '754',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  'Posts',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '3521',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  'Followers',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '121',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  'Following',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
