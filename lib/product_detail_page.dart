import 'dart:convert';

import 'package:ecommerce_app/cart.dart';
import 'package:ecommerce_app/product_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    this.productDetails,
    this.isMen = false,
    this.isWomen = false,
    this.isPet = false,
  });
  final Object? productDetails;
  final bool isMen;
  final bool isWomen;
  final bool isPet;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedImage = 0;
  int selectedsize = 0;

  Product? product;

  @override
  void initState() {
    if (!mounted) return;
    setState(() {
      if (widget.isWomen) {
        product = Product.fromJson(
          json.decode(json.encode(widget.productDetails)),
        );
      } else if (widget.isMen) {
        product = Product.fromJson(
          json.decode(json.encode(widget.productDetails)),
        );
      } else if (widget.isPet) {
        product = Product.fromJson(
          json.decode(json.encode(widget.productDetails)),
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          Stack(
            alignment: const Alignment(0.5, -1),
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartPage()),
                  );
                },
                icon: const Icon(Icons.shopping_cart),
              ),
              if (cartProductList.isNotEmpty)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 2,
                  ),
                  child: Text(
                    cartProductList.length.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: product == null
          ? const Center(child: CircularProgressIndicator())
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.blueGrey.shade50),
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: AspectRatio(
                          aspectRatio: 2.5,
                          child: Image.asset(
                            product!.image!.elementAt(selectedImage),
                            // menProductDetailList
                            //     .elementAt(0)
                            //     .imgurl!
                            //     .elementAt(selectedImage),
                            fit: BoxFit.contain,
                            color: Colors.blueGrey.shade50,
                            colorBlendMode: BlendMode.multiply,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: product!.image!.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index1) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedImage = index1;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  child: Container(
                                    height: 30,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: selectedImage == index1
                                            ? Colors.blueAccent
                                            : Colors.white,
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Image.asset(
                                        product!.image![index1],
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // const Expanded(child: Padding(padding: EdgeInsets.all(10))),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        product!.name!,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 5),
                      child: Text(
                        product!.price.toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis purus laoreet, efficitur libero vel, feugiat ante. Vestibulum tempor, ligula.",
                        style: TextStyle(fontSize: 15),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12, top: 5),
                      child: Text("Size", style: TextStyle(fontSize: 18)),
                    ),
                    // ignore: sized_box_for_whitespace
                    if (product!.size != null)
                      SizedBox(
                        height: 60,
                        // width: 220,
                        // color: Colors.blue,
                        child: ListView.builder(
                          itemCount: product!.size!.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedsize = index;
                                  });
                                },
                                child: Container(
                                  // height: 100,
                                  decoration: BoxDecoration(
                                    color: selectedsize == index
                                        ? Colors.blueAccent.shade200
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 50,

                                  child: Center(
                                    child: Text(
                                      product!.size![index],
                                      style: TextStyle(
                                        color: selectedsize == index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    Container(
                      height: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                if (product != null) {
                                  if (!mounted) return;
                                  setState(() {
                                    cartProductList.add(
                                      Product.fromJson(
                                        json.decode(json.encode(product)),
                                      ),
                                    );
                                  });
                                }
                                // Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Text("Add to Cart"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
