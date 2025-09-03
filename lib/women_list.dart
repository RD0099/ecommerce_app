import 'package:ecommerce_app/cart.dart';
import 'package:ecommerce_app/product_detail_page.dart';
import 'package:ecommerce_app/product_model.dart';
import 'package:flutter/material.dart';

class WomenList extends StatefulWidget {
  const WomenList({super.key});

  @override
  State<WomenList> createState() => _WomenListState();
}

class _WomenListState extends State<WomenList> {
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
        title: const Text("women"),
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
            // const SizedBox(
            //   height: 10,
            // ),
            Container(
              height: 200,
              width: 500,
              color: Colors.white,
              child: GridView.builder(
                itemCount: womenCategoryList.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                      productDetails: womenCategoryList[index],
                                      isWomen: true,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                womenCategoryList[index].image![0],
                                height: 250,
                                width: 250,
                                fit: BoxFit.contain,
                                color: Colors.grey[200],
                                colorBlendMode: BlendMode.multiply,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            womenCategoryList[index].name!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "\$${womenCategoryList[index].price}",
                          style: const TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
            // const SizedBox(
            //   height: 10,
            // ),
            Container(
              height: 200,
              width: 500,
              color: Colors.white,
              child: GridView.builder(
                itemCount: womenjeansCategoryList.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                                          womenjeansCategoryList[index],
                                      isWomen: true,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                womenjeansCategoryList[index].image![0],
                                height: 250,
                                width: 250,
                                fit: BoxFit.contain,
                                color: Colors.grey[200],
                                colorBlendMode: BlendMode.multiply,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            womenjeansCategoryList[index].name!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "\$${womenjeansCategoryList[index].price}",
                          style: const TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
