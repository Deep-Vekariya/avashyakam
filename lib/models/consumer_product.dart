import 'package:demo/resources/images.dart';

class ConsumerProduct {
  final String name, image, price;
  final double id;
// add id
  ConsumerProduct(
      {required this.name,
      required this.image,
      required this.price,
      required this.id});
}

// List of Products
List<ConsumerProduct> consumerproducts = [
  ConsumerProduct(
    name: "Apple",
    image: Resources().img14,
    price: "₹1500",
    id: 001,
  ),
  ConsumerProduct(
    name: "Duck",
    image: Resources().img16,
    price: "₹100",
    id: 002,
  ),
  ConsumerProduct(
    name: "Google",
    image: Resources().img17,
    price: "₹4500",
    id: 003,
  ),
  ConsumerProduct(
    name: "burger",
    image: Resources().img15,
    price: "₹45",
    id: 004,
  ),
  ConsumerProduct(
    name: "photo with frame",
    image: Resources().img18,
    price: "₹4500",
    id: 005,
  ),
  ConsumerProduct(
    name: "model",
    image: Resources().img12,
    price: "₹400",
    id: 006,
  ),
  ConsumerProduct(
    name: "Writing pad",
    image: Resources().img11,
    price: "₹4500",
    id: 007,
  ),
  ConsumerProduct(
    name: "Face Mask",
    image: Resources().img9,
    price: "₹20",
    id: 008,
  ),
  ConsumerProduct(
    name: "Flower",
    image: Resources().img8,
    price: "₹35",
    id: 009,
  ),
  ConsumerProduct(
    name: "Stickers",
    image: Resources().img6,
    price: "₹10",
    id: 010,
  ),
  ConsumerProduct(
    name: "Stickers",
    image: Resources().img6,
    price: "₹10",
    id: 011,
  ),
  ConsumerProduct(
    name: "Stickers",
    image: Resources().img6,
    price: "₹10",
    id: 012,
  ),
  ConsumerProduct(
    name: "Stickers",
    image: Resources().img6,
    price: "₹10",
    id: 013,
  ),
  ConsumerProduct(
    name: "burger",
    image: Resources().burger,
    price: "₹60",
    id: 001,
  ),
  ConsumerProduct(
    name: "coffee",
    image: Resources().coffee,
    price: "₹30",
    id: 002,
  ),
  ConsumerProduct(
    name: "dhosa",
    image: Resources().dhosa,
    price: "₹80",
    id: 003,
  ),
  ConsumerProduct(
    name: "donuts",
    image: Resources().donuts,
    price: "₹125",
    id: 004,
  ),
  ConsumerProduct(
    name: "fries",
    image: Resources().fries,
    price: "₹50",
    id: 006,
  ),
  ConsumerProduct(
    name: "idli",
    image: Resources().idli,
    price: "₹30",
    id: 007,
  ),
  ConsumerProduct(
    name: "manchurian",
    image: Resources().manchurian,
    price: "₹60",
    id: 008,
  ),
  ConsumerProduct(
    name: "noodles",
    image: Resources().noodles,
    price: "₹75",
    id: 009,
  ),
  ConsumerProduct(
    name: "panipuri",
    image: Resources().panipuri,
    price: "₹20",
    id: 010,
  ),
  ConsumerProduct(
    name: "pizza",
    image: Resources().pizza,
    price: "₹150",
    id: 011,
  ),
  ConsumerProduct(
    name: "pulav",
    image: Resources().pulav,
    price: "₹65",
    id: 012,
  ),
  ConsumerProduct(
    name: "sandwich",
    image: Resources().sandwich,
    price: "₹90",
    id: 013,
  ),
  ConsumerProduct(
    name: "tea",
    image: Resources().tea,
    price: "₹10",
    id: 014,
  ),
  ConsumerProduct(
    name: "vadapav",
    image: Resources().vadapav,
    price: "₹25",
    id: 015,
  ),
];
