import 'package:ecommerce_app/product_detail_page.dart';
import 'package:ecommerce_app/product_model.dart';
import 'package:flutter/material.dart';

class PetsList extends StatefulWidget {
  const PetsList({super.key});

  @override
  State<PetsList> createState() => _PetsListState();
}

class _PetsListState extends State<PetsList> {
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
        title: const Text("Pets"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
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
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "Toys",
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
                itemCount: petscategorylist.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
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
                                      productDetails: petscategorylist[index],
                                      isPet: true,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                petscategorylist[index].image![0],
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
                            petscategorylist[index].name!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "\$${petscategorylist[index].price}",
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
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "Treats",
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
                itemCount: petsfoodcategorylist.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
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
                                          petsfoodcategorylist[index],
                                      isPet: true,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                petsfoodcategorylist[index].image![0],
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
                            petsfoodcategorylist[index].name!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "\$${petsfoodcategorylist[index].price}",
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
