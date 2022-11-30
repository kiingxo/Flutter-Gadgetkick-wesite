import 'package:flutter/material.dart';

class SamsungProduct {
  final int id, price;
  final String title, image;

  SamsungProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

// Our samsung Products

List<SamsungProduct> samsungProducts = [
  SamsungProduct(
    id: 1,
    image: 'assets/images/samsung.png',
    title: "Samsung 1",
    price: 54000,
  ),
  SamsungProduct(
    id: 2,
    image: 'assets/images/samsung.png',
    title: "Samsung 2",
    price: 180000,
  ),
  SamsungProduct(
    id: 3,
    image: 'assets/images/samsung.png',
    title: "Samsung 3",
    price: 195000,
  ),
  SamsungProduct(
    id: 4,
    image: 'assets/images/samsung.png',
    title: "Samsung 4",
    price: 500000,
  ),
];
