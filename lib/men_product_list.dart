import 'package:ecommerce_app/cart.dart';
import 'package:ecommerce_app/product_detail_page.dart';
import 'package:ecommerce_app/product_model.dart';
// import 'package:ecommerce_app/cart_page.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductList();
}

class _ProductList extends State<ProductList> {
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
        centerTitle: true,
        title: const Text("Men"),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  "Shirts",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              // const SizedBox(height: 8),
              Container(
                height: 200,
                width: 500,
                color: Colors.white,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.65,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: mensCategoryList.length,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // alignment: WrapAlignment.start,
                      // runAlignment: WrapAlignment.center,
                      // direction: Axis.vertical,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.grey[200],
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                      productDetails: mensCategoryList[index],
                                      isMen: true,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                mensCategoryList[index].image![0],
                                height: 250,
                                width: 250,
                                fit: BoxFit.contain,
                                color: Colors.grey[200],
                                colorBlendMode: BlendMode.multiply,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          mensCategoryList[index].name!,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "\$${mensCategoryList[index].price!}",
                          style: const TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  "Jeans",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              // const SizedBox(height: 10),
              Container(
                height: 200,
                width: 500,
                color: Colors.white,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.65,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: mensjeansCategoryList.length,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // alignment: WrapAlignment.start,
                      // runAlignment: WrapAlignment.center,
                      // direction: Axis.vertical,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.grey[200],
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                      productDetails:
                                          mensjeansCategoryList[index],
                                      isMen: true,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                mensjeansCategoryList[index].image![0],
                                height: 250,
                                width: 250,
                                fit: BoxFit.contain,
                                color: Colors.grey[200],
                                colorBlendMode: BlendMode.multiply,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          mensjeansCategoryList[index].name!,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "\$${mensjeansCategoryList[index].price!}",
                          style: const TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  "Shorts",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              // const SizedBox(height: 10),
              Container(
                height: 200,
                width: 500,
                color: Colors.white,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.65,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: mensjeansCategoryList.length,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // alignment: WrapAlignment.start,
                      // runAlignment: WrapAlignment.center,
                      // direction: Axis.vertical,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.grey[200],
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                      productDetails:
                                          mensshortsCategoryList[index],
                                      isMen: true,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                mensshortsCategoryList[index].image![0],
                                height: 250,
                                width: 250,
                                fit: BoxFit.contain,
                                color: Colors.grey[200],
                                colorBlendMode: BlendMode.multiply,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          mensshortsCategoryList[index].name!,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "\$${mensshortsCategoryList[index].price!}",
                          style: const TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
