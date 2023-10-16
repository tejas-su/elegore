import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:elegore/components/item_card.dart';
import 'package:elegore/models/items.dart';
import 'package:elegore/models/cart_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserCart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: InputDecoration(
                enabled: true,
                hintText: "Search",
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                prefixIcon: const Icon(Icons.search_rounded, size: 20),
                suffixIcon: const Icon(Icons.tune_rounded, size: 20),
                filled: true,
                fillColor: Colors.deepPurpleAccent.withOpacity(0.1),
                contentPadding: const EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Text(
              'Our Collections',
              style: GoogleFonts.italiana(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  ItemsModel item = value.getItems()[index];
                  return ItemCard(
                    items: item,
                    onTap: () => addItem(item),
                  );
                }),
          )
        ],
      ),
    );
  }

  addItem(ItemsModel item) {
    Provider.of<UserCart>(context, listen: false).addItem(item);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
          child: Text(
            'Happy Shopping 🥳',
            style:
                GoogleFonts.italiana(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        content: Text(
          'Your item ${item.itemName} has been successsfully added to cart',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
