import 'package:flutter/material.dart';

class ServiceCentreData {
  const ServiceCentreData({
    required this.name,
    required this.address,
    required this.mail,
    required this.phone,
  });

  final String name;
  final String address;
  final String mail;
  final String phone;
}
