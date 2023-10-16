import 'package:elegore/models/cart_model.dart';
import 'package:elegore/models/items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  final ItemsModel items;

  const CartItem({super.key, required this.items});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset(
          widget.items.imagePath,
        ),
        title: Text(
          widget.items.itemName,
          style:
              GoogleFonts.italiana(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        // ignore: prefer_interpolation_to_compose_strings
        subtitle: Text(
          'Rs ${widget.items.price}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        isThreeLine: true,
        trailing:
            IconButton(onPressed: removeItem, icon: const Icon(Icons.delete)));
  }

  void removeItem() {
    Provider.of<UserCart>(context, listen: false).removeItem(widget.items);
  }
}
