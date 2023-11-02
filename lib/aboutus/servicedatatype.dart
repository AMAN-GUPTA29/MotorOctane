import 'package:flutter/material.dart';

class OurService {
  const OurService({
    required this.content,
    required this.image,
  });

  final String content;
  final String image;
}

class WeAreMotorOctane {
  const WeAreMotorOctane({
    required this.content,
    required this.image,
    required this.name,
    required this.designation,
  });

  final String content;
  final String image;
  final String name;
  final String designation;
}

class JobDescription {
  const JobDescription({
    required this.title,
    required this.discription,
  });

  final String title;
  final String discription;
}
