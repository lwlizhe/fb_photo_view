import 'package:flutter/material.dart';
import 'package:fb_photo_view/photo_view.dart';
import 'package:fb_photo_view_example/screens/app_bar.dart';

class InlineExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const ExampleAppBar(
            title: "Inline Examples",
            showGoBack: true,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    "Example of usage in a contained context",
                    style: const TextStyle(fontSize: 18.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 20.0,
                  ),
                  height: 200.0,
                  child: ClipRect(
                    child: PhotoView(
                      imageProvider: const AssetImage("assets/large-image.jpg"),
                      maxScale: PhotoViewComputedScale.covered * 2.0,
                      minScale: PhotoViewComputedScale.contained * 0.8,
                      initialScale: PhotoViewComputedScale.covered,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
