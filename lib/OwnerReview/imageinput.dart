import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key, required this.onPickImage});

  final void Function(File image) onPickImage;

  @override
  State<ImageInput> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  File? _selectedImage;

  void _takePicture() async {
    final imagePicker = ImagePicker();
    final pickedIimage =
        await imagePicker.pickImage(source: ImageSource.camera, maxWidth: 600);

    if (pickedIimage == null) {
      return;
    }
    setState(() {
      _selectedImage = File(pickedIimage.path);
    });

    widget.onPickImage(_selectedImage!);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton(
      onPressed: _takePicture,
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          width: 200,
          child: Text(
            'Upload Image Here',
            style: TextStyle(
              color: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );

    if (_selectedImage != null) {
      content = GestureDetector(
        onTap: _takePicture,
        child: Image.file(
          _selectedImage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }

    return Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   width: 1,
          //   color: Colors.black,
          // ),
        ),
        height: 150,
        width: double.infinity,
        alignment: Alignment.center,
        child: content);
  }
}
