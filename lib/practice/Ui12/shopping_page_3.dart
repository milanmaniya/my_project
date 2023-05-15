import 'package:flutter/material.dart';
import 'package:my_project/common/common_widgets.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonPlaceOrder({
      required String image,
      required String productName,
      required String price,
      required String quantity,
    }) =>
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 60,
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              quantity,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        );

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                height: 100,
                width: double.infinity,
                color: Colors.orangeAccent.shade400,
                child: const Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 234),
                height: 550,
                color: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.shopify_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Cart",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    commonPlaceOrder(
                        image: "assets/images/apricot.png",
                        price: "\$9.43",
                        productName: "Dried Aprocots",
                        quantity: "x1"),
                    commonPlaceOrder(
                        image: "assets/images/cheery.png",
                        price: "\$15.55",
                        productName: "Dried cherrys",
                        quantity: "x1"),
                    commonPlaceOrder(
                        image: "assets/images/plumes.png",
                        price: "\$13.27",
                        productName: "Dried plumes",
                        quantity: "x2"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "3 Items",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                                color: Colors.orange.shade300, width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "\$38.25",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 123,
                                decoration: BoxDecoration(
                                  color: Colors.orange.shade300,
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: const Text(
                                  "Buy now",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: commonOrder(
                    quantity: "Quantity(300g)", number: "1", price: "\$9.43"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
