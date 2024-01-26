import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

class Broucherbutton extends StatefulWidget {
  Broucherbutton({super.key, required this.address});

  String address;

  @override
  State<Broucherbutton> createState() => _BroucherbuttonState(address);
}

class _BroucherbuttonState extends State<Broucherbutton> {
  String address;
  _BroucherbuttonState(this.address);
  Dio dio = Dio();
  double progress = 0.0;

  void downloading() async {
    String url = "http://137.184.91.38:5000/productImages/${widget.address}";

    const String fileName = "MOBrochure.pdf";

    FileDownloader.downloadFile(
      url: url,
      onDownloadError: (String error) {
        print("eroor : $error");
      },
      onDownloadCompleted: (path) {
        final File file = File(path);
        print(file);
      },
      onProgress: (fileName, progress) {
        print(progress * 100);
      },
    );
  }

  Future<String> _getFilePath(String filename) async {
    final dir = await getApplicationDocumentsDirectory();
    return "${dir.path}/$filename";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: InkWell(
          onTap: () {
            if (address == null) {
              print("null");
            } else {
              print(address);
              downloading();
            }
          },
          child: Container(
            alignment: Alignment.center,
            width: 20,
            height: 40,
            color: Colors.red.shade900,
            child: Text(
              "DOWNLOAD BROCHURE",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Montserrat", fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
