import 'package:flutter/material.dart';

class BrandLogo {
  const BrandLogo(
      {required this.image,
      required this.name,
      required this.id,
      required this.rating,
      required this.selling});

  final String id;
  final Image image;
  final String name;
  final String selling;
  final String rating;
}
