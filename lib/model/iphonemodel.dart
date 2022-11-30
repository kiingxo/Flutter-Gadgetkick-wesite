import 'package:flutter/material.dart';

class IphoneProduct {
  final int id, price;
  final String title, info, image;

  IphoneProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.info,
  });
}

// Our iPhone Products

List<IphoneProduct> iPhoneProducts = [
  IphoneProduct(
      id: 1,
      image: 'assets/images/iphone.jpeg',
      title: "iPhone 1",
      price: 1100000,
      info: "product info"),
  IphoneProduct(
      id: 2,
      image: 'assets/images/iphone.jpeg',
      title: "iPhone 2",
      price: 150000,
      info: "product info"),
  IphoneProduct(
      id: 3,
      image: 'assets/images/iphone.jpeg',
      title: "iPhone 3",
      price: 145000,
      info: "product info"),
  IphoneProduct(
      id: 4,
      image: 'assets/images/iphone.jpeg',
      title: "iPhone 4",
      price: 136000,
      info: "product info"),
];
