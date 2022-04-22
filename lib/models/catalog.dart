import 'package:flutter/material.dart';

class CatalogModel{
  static final items = [
    Item(
        id: 1,
        name: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        price: 109.95,
        description:
        "Your perfect pack for everyday use and walks in the forest.",
        category: "men's clothing",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
    Item(
        id: 2,
        name: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        price: 108.95,
        description:
        "Your perfect pack for everyday use and walks in the forest.",
        category: "men's clothing",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
    Item(
        id: 3,
        name: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        price: 107.95,
        description:
        "Your perfect pack for everyday use and walks in the forest.",
        category: "men's clothing",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
    Item(
        id: 4,
        name: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        price: 106.95,
        description:
        "Your perfect pack for everyday use and walks in the forest.",
        category: "men's clothing",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
    Item(
        id: 5,
        name: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        price: 106.95,
        description:
        "Your perfect pack for everyday use and walks in the forest.",
        category: "men's clothing",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
    Item(
        id: 6,
        name: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        price: 106.95,
        description:
        "Your perfect pack for everyday use and walks in the forest.",
        category: "men's clothing",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
    Item(
        id: 7,
        name: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        price: 106.95,
        description:
        "Your perfect pack for everyday use and walks in the forest.",
        category: "men's clothing",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
    Item(
        id: 8 ,
        name: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        price: 106.95,
        description:
        "Your perfect pack for everyday use and walks in the forest.",
        category: "men's clothing",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),

  ];


}


class Item {
  final num id;
  final String name;
  final num price;
  final String description;
  final String category;
  // final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.description,
      required this.category,
      required this.image});


}

