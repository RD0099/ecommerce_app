class CategoryList {
  List<Product>? product;

  CategoryList({this.product});

  CategoryList.fromJson(Map<String, dynamic> json) {
    if (json['men'] != null) {
      product = <Product>[];
      json['men'].forEach((v) {
        product!.add(Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (product != null) {
      data['men'] = product!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  int? id;
  String? name;
  List<String>? image;
  double? price;
  List<String>? size;

  Product({this.id, this.name, this.image, this.price, this.size});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['image'] != null) {
      image = <String>[];
      json['image'].forEach((v) {
        image!.add((v));
      });
    }
    price = json['price'];
    if (json['size'] != null) {
      size = <String>[];
      json['size'].forEach((v) {
        size!.add((v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (image != null) {
      data['image'] = image!.map((v) => v).toList();
    }
    data['price'] = price;
    if (size != null) {
      data['size'] = size!.map((v) => v).toList();
    }
    return data;
  }
}

List<Product> mensCategoryList = [
  Product(
    id: 1,
    image: [
      "assets/images/91ieWhKe9AL._AC_UX569_.jpg",
      "assets/images/91ieWhKe9AL._AC_UX569_.jpg",
      "assets/images/91ieWhKe9AL._AC_UX569_.jpg",
      "assets/images/91ieWhKe9AL._AC_UX569_.jpg",
    ],
    name: "2-Pack Crewneck T-Shirts - Black",
    price: 12.99,
    size: ["S", "M", "L", "XL"],
  ),
  Product(
    id: 2,
    image: [
      "assets/images/81tpGc13OgL._AC_UX522_.jpg",
      "assets/images/UY679_.jpg",
      "assets/images/2UY679_.jpg",
      "assets/images/3UY606_.jpg",
    ],
    name: "Short Sleeve Henley - Blue",
    price: 17.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
  Product(
    id: 3,
    image: [
      "assets/images/61m68nuygSL._AC_UX522_.jpg",
      "assets/images/4UX522_.jpg",
    ],
    name: "Polo RL V-Neck",
    price: 24.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
];

List<Product> mensjeansCategoryList = [
  Product(
    id: 1,
    image: [
      "assets/images/91SIuLNN+lL._AC_UY679_.jpg",
      "assets/images/5UX522_.jpg",
    ],
    name: "Athletic-Fit Stretch Jeans",
    price: 29.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
  Product(
    id: 2,
    image: [
      "assets/images/91L4zjZKF-L._AC_UX522_.jpg",
      "assets/images/6UX522_.jpg",
    ],
    name: "Levi's Original Jeans",
    price: 39.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
];

List<Product> mensshortsCategoryList = [
  Product(
    id: 1,
    image: [
      "assets/images/A1lTY32j6gL._AC_UX679_.jpg",
      "assets/images/7UX522_.jpg",
    ],
    name: "2-Pack Performance Shorts",
    price: 19.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
  Product(
    id: 2,
    image: [
      "assets/images/915Io2JEUPL._AC_UX679_.jpg",
      "assets/images/8UX679_.jpg",
    ],
    name: "Levi's Cargo Shorts",
    price: 29.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
];

List<Product> womenCategoryList = [
  Product(
    id: 1,
    image: ["assets/images/t-shirt.png", "assets/images/t-shirt.png"],
    name: "2-Pack Short-Sleeve Crewneck",
    price: 16.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
  Product(
    id: 2,
    image: [
      "assets/images/71lDML8KDQL._AC_UX522_.jpg",
      "assets/images/71lDML8KDQL._AC_UX522_.jpg",
    ],
    name: "Waffle Knit Tunic Blouse",
    price: 22.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
];

List<Product> womenjeansCategoryList = [
  Product(
    id: 1,
    image: ["assets/images/womenjeans1.jpg", "assets/images/womenjeans1.jpg"],
    name: "Mid-Rise Skinny Jeans",
    price: 28.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
  Product(
    id: 2,
    image: ["assets/images/womenjeans2.jpg", "assets/images/womenjeans2.jpg"],
    name: "Levi's Straight 505 Jeans",
    price: 34.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
  Product(
    id: 3,
    image: ["assets/images/womenjeans.jpg", "assets/images/womenjeans.jpg"],
    name: "Levi's 715 Bootcut Jeans",
    price: 34.99,
    size: ["Xs", "S", "M", "L", "XL"],
  ),
];

List<Product> petscategorylist = [
  Product(
    id: 1,
    image: ["assets/images/toys.jpg", "assets/images/toys.jpg"],
    name: "3-Pack - Squeaky Plush Dog Toy",
    price: 9.99,
  ),
  Product(
    id: 2,
    image: ["assets/images/.jpg", "assets/images/.jpg"],
    name: "Wobble Wag Giggle Ball",
    price: 11.99,
  ),
];

List<Product> petsfoodcategorylist = [
  Product(
    id: 1,
    image: [
      "assets/images/51dS9c0xIdL._SX342_.jpg",
      "assets/images/51dS9c0xIdL._SX342_.jpg",
    ],
    name: "Duck Hide Twists",
    price: 8.99,
  ),
  Product(
    id: 2,
    image: [
      "assets/images/81LV2CHtGKL._AC_SY355_.jpg",
      "assets/images/81LV2CHtGKL._AC_SY355_.jpg",
    ],
    name: "Zuke's Mini Training Treats",
    price: 10.99,
  ),
];

List<Product> cartProductList = <Product>[];
