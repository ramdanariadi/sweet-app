import 'package:flutter/material.dart';
import 'package:food_app/product/prduct_detail.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData md = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: const Color.fromRGBO(252, 180, 149, 0.93),
              padding: const EdgeInsets.only(top: 69),
              width: md.size.width,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 21),
                        child: Image.asset("images/burger-menu-icon.png")),
                    Padding(
                      padding: const EdgeInsets.only(right: 21),
                      child: Image.asset("images/cart.png"),
                    )
                  ],
                ),
                SearchBar(md: md),
                Container(
                  margin: const EdgeInsets.only(left: 39, right: 39, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(left: 20, right: 21, top: 6, bottom: 6),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 249, 243, 0.47),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text(
                          "All",
                          style: TextStyle(
                              color: Color.fromARGB(159, 255, 251, 249),
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Text(
                        "Sweets",
                        style: TextStyle(
                            color: Color.fromRGBO(167, 90, 57, 0.63),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "Cakes",
                        style: TextStyle(
                            color: Color.fromRGBO(167, 90, 57, 0.63),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "Candy",
                        style: TextStyle(
                            color: Color.fromRGBO(167, 90, 57, 0.63),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ]),
            ),
            Container(
                height: md.size.height * 0.6,
                width: md.size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50), topRight: Radius.circular(50)))),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FoodCard(md: md),
                  FoodCard(md: md),
                  FoodCard(md: md),
                ],
              ),
            )
          ],
        ));
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.md,
  }) : super(key: key);

  final MediaQueryData md;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 36, right: 36, top: 45),
      child: TextField(
          style: const TextStyle(color: Color.fromRGBO(255, 249, 243, 1)),
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 25, top: 10, bottom: 10, right: 25),
              suffixIcon: Image.asset(
                "images/magnifier.png"
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.white.withOpacity(0.41)),
                  borderRadius: BorderRadius.circular(15)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.white.withOpacity(0.41)),
                  borderRadius: BorderRadius.circular(15)))),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.md,
  }) : super(key: key);

  final MediaQueryData md;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductDetail(),
            ));
      },
      child: Container(
        width: md.size.width * 0.9,
        height: md.size.height * 0.17,
        margin: const EdgeInsets.only(bottom: 21),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(253, 253, 253, 255),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(7, 8),
                  blurRadius: 5,
                  spreadRadius: 0)
            ]),
        padding: const EdgeInsets.only(left: 13, right: 13),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Macaron",
                    style: TextStyle(
                        color: Color.fromRGBO(25, 25, 25, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 18,
                  ),
                  Text(
                    "Flavoured cupcakes with special icing",
                    style:
                        TextStyle(color: Color.fromRGBO(136, 136, 136, 1), fontSize: 13),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 22,
                  ),
                  Text(
                    "\$6",
                    style: TextStyle(color: Color.fromRGBO(90, 167, 43, 1), fontSize: 18),
                  )
                ],
              ),
            ),
            Expanded(flex: 2, child: Image.asset("images/macaron.png")),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Image.asset("images/love.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
