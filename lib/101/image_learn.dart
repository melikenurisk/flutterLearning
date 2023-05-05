// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String _imagePath =
      "https://freepngimg.com/thumb/apple_fruit/133239-book-apple-free-transparent-image-hd.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 300,
            child: PngImage(name: ImageItems().appleBookWithoutPath),
          ),
          Image.network(
            _imagePath,
            errorBuilder: (context, error, StackTrace) =>
                const Icon(Icons.abc_outlined),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  //final String appleWithBook = "assets/3300836.png";
  //final String appleBook = "assets/png/3300836.png";
  final String appleBookWithoutPath = "ic_apple_with_school";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    //return Image.asset(ImageItems().appleBook, fit: BoxFit.cover);
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
