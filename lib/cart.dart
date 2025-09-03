import 'package:ecommerce_app/product_model.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double initialValue = 0.0;
  @override
  void initState() {
    if (!mounted) return;
    setState(() {
      for (var element in cartProductList) {
        initialValue += element.price!;
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
          icon: const Icon(Icons.close),
        ),
        centerTitle: true,
        title: Column(
          children: [
            const Text("Cart", style: TextStyle(fontSize: 28)),
            Text(
              cartProductList.length.toString(),
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: cartProductList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey[200],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    cartProductList[index].image![0],
                    height: 120,
                    width: 120,
                    fit: BoxFit.contain,
                    color: Colors.grey[200],
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // alignment: WrapAlignment.start,
                      // crossAxisAlignment: WrapCrossAlignment.start,
                      // direction: Axis.vertical,
                      // runAlignment: WrapAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Text(
                            cartProductList[index].name!,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Text(
                            double.parse(
                              cartProductList[index].price.toString(),
                            ).toString(),
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (!mounted) return;
                    setState(() {
                      cartProductList.removeAt(index);
                      // cartProductList.removeAt(index);
                    });
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => CartPage(),
                    //     ));
                  },
                  icon: const Icon(Icons.close, color: Colors.red),
                ),
              ],
            ),
          );
        },
      ),

      // Spacer(),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Total",
                      style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "\$ ${initialValue.floorToDouble()}",
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: const Text(" Check out")),
            ],
          ),
        ),
      ),
    );
  }
}
