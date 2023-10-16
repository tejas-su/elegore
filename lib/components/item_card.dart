import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:elegore/models/items.dart';

class ItemCard extends StatefulWidget {
  final ItemsModel items;

  const ItemCard({super.key, required this.items, required this.onTap});
  final Function()? onTap;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Image
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              widget.items.imagePath,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //name
          Text(
            widget.items.itemName,
            style:
                GoogleFonts.italiana(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          //description
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Text(
              widget.items.description,
              style: const TextStyle(
                fontSize: 18,
                leadingDistribution: TextLeadingDistribution.even,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.withOpacity(0.1),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //price
                Text(
                  'Rs ${widget.items.price}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent.withOpacity(0.2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: GestureDetector(
                        onTap: widget.onTap,
                        child: const Icon(
                          Icons.add,
                          size: 35,
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
