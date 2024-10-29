import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({super.key, required this.newsTileModel});

  final NewsModel newsTileModel;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: newsTileModel.image ??
          "https://plus.unsplash.com/premium_photo-1707006301367-3834516f430c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZGVmYXVsdCUyMG5ld3MlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D",
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      imageBuilder: (context, imageProvider) => Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: imageProvider,
          ),
        ),
      ),
    );
  }
}
