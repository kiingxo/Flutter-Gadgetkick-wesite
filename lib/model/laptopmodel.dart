import 'package:flutter/material.dart';

class LaptopProduct {
  final int id, price;
  final String title, image;

  LaptopProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<LaptopProduct> laptopProducts = [
  LaptopProduct(
    id: 1,
    image: 'assets/images/laptop.png',
    title: "laptop1",
    price: 134000,
  ),
  LaptopProduct(
    id: 2,
    image: 'assets/images/laptop.png',
    title: "laptop1",
    price: 500000,
  ),
  LaptopProduct(
    id: 3,
    image: 'assets/images/laptop.png',
    title: "laptop1",
    price: 16500,
  ),
  LaptopProduct(
    id: 4,
    image: 'assets/images/laptop.png',
    title: "laptop1",
    price: 300000,
  ),
];
