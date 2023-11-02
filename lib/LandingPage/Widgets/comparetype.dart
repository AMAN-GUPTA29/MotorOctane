import 'package:flutter/material.dart';

class CompareDataType {
  const CompareDataType(
      {required this.companyFirst,
      required this.companySecond,
      required this.carNameFirst,
      required this.carNameSecond,
      required this.carFirstStart,
      required this.carFirstEnd,
      required this.carSecondStart,
      required this.carSecondEnd});

  final String companyFirst;
  final String companySecond;
  final String carNameFirst;
  final String carNameSecond;
  final String carFirstStart;
  final String carFirstEnd;
  final String carSecondStart;
  final String carSecondEnd;
}
