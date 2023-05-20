import 'package:demo/resources/images.dart';

class CanteenProduct {
  final String name, image, price;
  final double id;
// add id
  CanteenProduct(
      {required this.name,
      required this.image,
      required this.price,
      required this.id});
}

// List of Products
List<CanteenProduct> canteenproducts = [
  CanteenProduct(
    name: "burger",
    image: Resources().burger,
    price: "₹60",
    id: 001,
  ),
  CanteenProduct(
    name: "coffee",
    image: Resources().coffee,
    price: "₹30",
    id: 002,
  ),
  CanteenProduct(
    name: "dhosa",
    image: Resources().dhosa,
    price: "₹80",
    id: 003,
  ),
  CanteenProduct(
    name: "donuts",
    image: Resources().donuts,
    price: "₹125",
    id: 004,
  ),
  CanteenProduct(
    name: "frankie",
    image: Resources().frankie,
    price: "₹40",
    id: 005,
  ),
  CanteenProduct(
    name: "fries",
    image: Resources().fries,
    price: "₹50",
    id: 006,
  ),
  CanteenProduct(
    name: "idli",
    image: Resources().idli,
    price: "₹30",
    id: 007,
  ),
  CanteenProduct(
    name: "manchurian",
    image: Resources().manchurian,
    price: "₹60",
    id: 008,
  ),
  CanteenProduct(
    name: "noodles",
    image: Resources().noodles,
    price: "₹75",
    id: 009,
  ),
  CanteenProduct(
    name: "panipuri",
    image: Resources().panipuri,
    price: "₹20",
    id: 010,
  ),
  CanteenProduct(
    name: "pizza",
    image: Resources().pizza,
    price: "₹150",
    id: 011,
  ),
  CanteenProduct(
    name: "pulav",
    image: Resources().pulav,
    price: "₹65",
    id: 012,
  ),
  CanteenProduct(
    name: "sandwich",
    image: Resources().sandwich,
    price: "₹90",
    id: 013,
  ),
  CanteenProduct(
    name: "tea",
    image: Resources().tea,
    price: "₹10",
    id: 014,
  ),
  CanteenProduct(
    name: "vadapav",
    image: Resources().vadapav,
    price: "₹25",
    id: 015,
  ),
];
