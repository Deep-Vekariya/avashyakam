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
    image: Images.img14,
    price: "₹1500",
    id: 001,
  ),
  ConsumerProduct(
    name: "Duck",
    image: Images.img16,
    price: "₹100",
    id: 002,
  ),
  ConsumerProduct(
    name: "Google",
    image: Images.img17,
    price: "₹4500",
    id: 003,
  ),
  ConsumerProduct(
    name: "burger",
    image: Images.img15,
    price: "₹45",
    id: 004,
  ),
  ConsumerProduct(
    name: "photo with frame",
    image: Images.img18,
    price: "₹4500",
    id: 005,
  ),
  ConsumerProduct(
    name: "model",
    image: Images.img12,
    price: "₹400",
    id: 006,
  ),
  ConsumerProduct(
    name: "Writing pad",
    image: Images.img11,
    price: "₹4500",
    id: 007,
  ),
  ConsumerProduct(
    name: "Face Mask",
    image: Images.img9,
    price: "₹20",
    id: 008,
  ),
  ConsumerProduct(
    name: "Flower",
    image: Images.img8,
    price: "₹35",
    id: 009,
  ),
  ConsumerProduct(
    name: "Stickers",
    image: Images.img6,
    price: "₹10",
    id: 010,
  ),
  ConsumerProduct(
    name: "Stickers",
    image: Images.img6,
    price: "₹10",
    id: 011,
  ),
  ConsumerProduct(
    name: "Stickers",
    image: Images.img6,
    price: "₹10",
    id: 012,
  ),
  ConsumerProduct(
    name: "Stickers",
    image: Images.img6,
    price: "₹10",
    id: 013,
  ),
  ConsumerProduct(
    name: "burger",
    image: Images.burger,
    price: "₹60",
    id: 001,
  ),
  ConsumerProduct(
    name: "coffee",
    image: Images.coffee,
    price: "₹30",
    id: 002,
  ),
  ConsumerProduct(
    name: "dhosa",
    image: Images.dhosa,
    price: "₹80",
    id: 003,
  ),
  ConsumerProduct(
    name: "donuts",
    image: Images.donuts,
    price: "₹125",
    id: 004,
  ),
  ConsumerProduct(
    name: "fries",
    image: Images.fries,
    price: "₹50",
    id: 006,
  ),
  ConsumerProduct(
    name: "idli",
    image: Images.idli,
    price: "₹30",
    id: 007,
  ),
  ConsumerProduct(
    name: "manchurian",
    image: Images.manchurian,
    price: "₹60",
    id: 008,
  ),
  ConsumerProduct(
    name: "noodles",
    image: Images.noodles,
    price: "₹75",
    id: 009,
  ),
  ConsumerProduct(
    name: "panipuri",
    image: Images.panipuri,
    price: "₹20",
    id: 010,
  ),
  ConsumerProduct(
    name: "pizza",
    image: Images.pizza,
    price: "₹150",
    id: 011,
  ),
  ConsumerProduct(
    name: "pulav",
    image: Images.pulav,
    price: "₹65",
    id: 012,
  ),
  ConsumerProduct(
    name: "sandwich",
    image: Images.sandwich,
    price: "₹90",
    id: 013,
  ),
  ConsumerProduct(
    name: "tea",
    image: Images.tea,
    price: "₹10",
    id: 014,
  ),
  ConsumerProduct(
    name: "vadapav",
    image: Images.vadapav,
    price: "₹25",
    id: 015,
  ),
];
