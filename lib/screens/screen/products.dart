// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

class Product {
  final String image, description, title;
  final int size, id, price;
  final Color color;

  Product({
    required this.id,
    required this.title,
    required this.size,
    required this.image,
    required this.color,
    required this.description,
    required this.price,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Leather Bag ",
      price: 768,
      size: 10,
      description:
          "Exotic Hand bag from your closet and walk out.This Is Perfect sized bag has one 1 Main compartment with a drawstring closure that can hold your wallet, keys, mobile phone other small accessories. "
          "This stylish and attractive bag is made of High Quality PU Leather material that can last for a long time."
          "It also has a long adjustable handle to carry the bag easily.",
      image: "assets/bag.jpg",
      color: Color(0xFFFF8F00)),
  Product(
      id: 2,
      title: "Exotic bag",
      price: 870,
      size: 8,
      description:
          "Classic Hand Bag: Top zipper closure, with 2 side zipper pockets design and elegant tassels decoration, fashionable and practical handbags for women/Girls"
          " Pair this bag with casuals of your liking to look smart.The sling bag/ Wallet is"
          " an added accessory along with the handbag and "
          "together they make up a cool accessory combo.",
      image: "assets/bag2.jpg",
      color: Color(0xFF55B8B2F)),
  Product(
      id: 3,
      title: "Fristo Handbag",
      price: 900,
      size: 22,
      description:
          "Look uber stylish and trendy by wearing this handbag and wallet for women from"
          " Women’s purse. Made from polyurethane (pu), this handbag is capacious and perfect for keeping"
          " your everyday essentials.",
      image: "assets/bag3.jpg",
      color: Color(0xFFFFF3E0)),
  Product(
      id: 4,
      title: "Classic Bag",
      price: 999,
      size: 12,
      description:
          "Pair this bag with casuals of your liking to look smart.The sling bag/ Wallet is"
          " an added accessory along with the handbag and "
          "together they make up a cool accessory combo.",
      image: "assets/bag4.jpg",
      color: Color(0xFF01579B)),
  Product(
      id: 5,
      title: "Sling Bag",
      price: 499,
      size: 12,
      description:
          "Stylish Sling Crossbody Bag : This Stylish Sling Bag is for all those Girls and Women who are the Fashionista Icons and leave everyone impressed with their style statement."
          " You can carry it as a Sling Bag or a Shoulder Bag or a Top Handle Handbag."
          "You will fall in Love with this gorgeous handbag right from the First Sight, we bet..",
      image: "assets/bag5.jpg",
      color: Color(0xFFE65100)),
  Product(
      id: 6,
      title: "Stylish Bag",
      price: 470,
      size: 12,
      description:
          "Lino Perros is characterised with its faux leather handbags that are meticulously crafted in timeless and classic designs."
          " Lino Perros defines handbags for the modern and elegant working women of today.",
      image: "assets/bag7.jpg",
      color: Color(0xFF80DEEA)),
  Product(
      id: 7,
      title: "Office Code",
      price: 780,
      size: 12,
      description:
          "Look uber stylish and trendy by wearing this handbag and wallet for women from"
          "Stylish Sling Crossbody Bag : This Stylish Sling Bag is for all those Girls and Women who are the Fashionista Icons and leave everyone impressed with their style statement."
          " You can carry it as a Sling Bag or a Shoulder Bag or a Top Handle Handbag.",
      image: "assets/bag.jpg",
      color: Color(0xFFFF8F00)),
  Product(
      id: 8,
      title: "Emported Bag",
      price: 490,
      size: 12,
      description:
          "Pair this bag with casuals of your liking to look smart.The sling bag/ Wallet is"
          " an added accessory along with the handbag and "
          "together they make up a cool accessory combo.",
      image: "assets/bag5.jpg",
      color: Color(0xFFE65100)),
  Product(
      id: 9,
      title: " Lino Styl Bag",
      price: 400,
      size: 12,
      description:
          "Lino Perros is characterised with its faux leather handbags that are meticulously crafted in timeless and classic designs. Lino Perros defines handbags for the modern and elegant working women of today.",
      image: "assets/bag7.jpg",
      color: Color(0xFF80DEEA)),
  Product(
      id: 10,
      title: "Dualtone Sling Bag",
      price: 500,
      size: 22,
      description:
          "Look uber stylish and trendy by wearing this handbag and wallet for women from"
          " Women’s purse. Made from polyurethane (pu), this handbag is capacious and perfect for keeping"
          " your everyday essentials.",
      image: "assets/bag3.jpg",
      color: Color(0xFFFFF3E0)),
];
