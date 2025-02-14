import 'dart:io';

import 'package:amazon_clone/constants/utils.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';

class AdminServices {
  void sellProduct({
    required BuildContext context,
    required String name,
    required String description,
    required double price,
    required double quantity,
    required String category,
    required List<File> images,
  }) async {
    try {
      final cloudinary = CloudinaryPublic('dm88qwpcr', 'cesyvywm');
      List<String> imageUrls = [];

      for (int i = 0; i < images.length; i++) {
        await cloudinary.uploadFile(
          CloudinaryFile.fromFile(
            images[i].path,
          ),
        );
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
