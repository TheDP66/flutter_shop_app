import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constats.dart';
import 'package:shop_app/models/product.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // It provide us total hheight and width
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * .3),
                  padding: EdgeInsets.only(
                    top: size.height * .12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      const CounterWithFavBtn(),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(
                  product: product,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
