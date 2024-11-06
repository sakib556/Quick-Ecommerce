import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Cart (7 Items)"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              CartItem(),
              CartItem(),
              CartItem(),
              CartItem(),
              CartItem(),
              CartItem(),
              CartItem(),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Checkbox(value: true, onChanged: (value) {}),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnryA-bWQlSamfU-Smu86VYO9hgmWqITs_pQ&s",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              "অ্যাটমিক হ্যাবিট্স বই ৩০০ পৃষ্ঠা  অ্যাটমিক হ্যাবিট্স বই ৩০০ পৃষ্ঠা",
                              maxLines: 2,
                              style: TextStyle(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            "৳21,250 * 3",
                            maxLines: 2,
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(.2),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.remove,
                                    size: 20,
                                  )),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                padding:
                                    const EdgeInsets.only(right: 10, left: 10),
                                child: Text("3"),
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(.2),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "৳63,750",
                    maxLines: 2,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Positioned(
                right: 5,
                top: 5,
                child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.delete,
                      size: 18,
                    ))),
          ],
        ),
      ),
    );
  }
}
