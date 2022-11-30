import 'package:flutter/material.dart';

class Product {
  final int id, price;
  final String title, image;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

// Our trending Products

List<Product> trendingProducts = [
  Product(
    id: 1,
    image: 'assets/images/samsung.png',
    title: "Androids",
    price: 64000,
  ),
  Product(
    id: 2,
    image: 'assets/images/iphone.jpeg',
    title: "iPhone",
    price: 150000,
  ),
  Product(
    id: 3,
    image: 'assets/images/samsung.png',
    title: "Samsung",
    price: 45000,
  ),
  Product(
    id: 4,
    image: 'assets/images/laptop.png',
    title: "Laptops",
    price: 360000,
  ),
];
