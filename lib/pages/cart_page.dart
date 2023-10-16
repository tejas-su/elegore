import 'package:elegore/components/cart_item.dart';
import 'package:elegore/models/cart_model.dart';
import 'package:elegore/models/items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserCart>(
      builder: (context, value, child) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My cart",
                  style: GoogleFonts.italiana(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.shopping_bag,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: value.getMyCart().length,
                itemBuilder: (context, index) {
                  ItemsModel item = value.getMyCart()[index];
                  return CartItem(
                    items: item,
                  );
                }),
          )
        ],
      ),
    );
  }
}
