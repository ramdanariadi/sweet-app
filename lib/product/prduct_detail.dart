import 'package:flutter/material.dart';
import 'package:food_app/utils/consts.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData md = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 69, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/arrow_left.png"),
                Image.asset("images/donuts-white-bg.png"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 33),
                      child: Text(
                        "Donuts",
                        style: TextStyle(
                            color: Color.fromRGBO(63, 61, 86, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "Flavoured cupcakes \n",
                            style: TextStyle(color: Color.fromRGBO(136, 136, 136, 1))),
                        TextSpan(
                            text: "with special icing",
                            style: TextStyle(color: Color.fromRGBO(136, 136, 136, 1)))
                      ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Image.asset("images/starts.png"),
                          const Text(
                            "22.K",
                            style: TextStyle(color: Color.fromRGBO(136, 136, 136, 1)),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 63),
                      child: Text(
                        "About this product",
                        style: TextStyle(
                            color: Color.fromRGBO(63, 61, 86, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "Flavoured cupcakes with special \n",
                            style: TextStyle(color: Color.fromRGBO(136, 136, 136, 1))),
                        TextSpan(
                            text: "icing, Flavoured cupcakes.",
                            style: TextStyle(color: Color.fromRGBO(136, 136, 136, 1)))
                      ])),
                    ),
                  ],
                ),
                Positioned(
                  right: -10,
                  top: 110,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 25),
                    decoration: BoxDecoration(
                        color: secondaryColor, borderRadius: BorderRadius.circular(24)),
                    child: const Text(
                      "\$5",
                      style: TextStyle(
                          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "images/love-2.png",
                ),
                Row(
                  children: [
                    Image.asset("images/minus.png"),
                    Image.asset("images/plus.png")
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 19),
            margin: const EdgeInsets.only(left: 25, right: 25, top: 29),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(10)),
            width: md.size.width,
            child: const Center(
              child: Text(
                "Buy Now",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w800, fontSize: 24),
              ),
            ),
          )
        ],
      ),
    );
  }
}
