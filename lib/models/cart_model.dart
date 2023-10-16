import 'package:elegore/models/items.dart';
import 'package:flutter/material.dart';

class UserCart extends ChangeNotifier {
  List<ItemsModel> cartItems = [
    ItemsModel(
      description:
          'Embodying the ultimate in the Italian feminity, the Diva collection sparkles with the glamour, drams and timeless beauty of a Diva',
      imagePath: 'lib/assets/items/N2.jpeg',
      itemName: 'Diva',
      price: '2,50,000',
    ),
    ItemsModel(
      description:
          'The master of gemstones, with a color revolution that deviates from ther traditional, diamond-based parison school of jwelry',
      imagePath: 'lib/assets/items/N1.jpeg',
      itemName: 'Parison ',
      price: '1,50,000',
    ),
    ItemsModel(
      description:
          'Coiled around the history of humanity, the seductive serpent dates back to ancient Greek Roman mythology',
      imagePath: 'lib/assets/items/R1.jpeg',
      itemName: 'Serpenti ',
      price: '1,20,000',
    ),
    ItemsModel(
      description:
          'The Greek Mythology recounts the tale of 9 muses, goddess sisters who inspired all litrature, science, music and the arts.',
      imagePath: 'lib/assets/items/N3.jpeg',
      itemName: 'Medusa ',
      price: '5,50,000',
    ),
    ItemsModel(
      description:
          'Operating from the Roman roots of the brand, A 40th anniversary tribute to initial Elegoré Roma',
      imagePath: 'lib/assets/items/W1.jpeg',
      itemName: 'Elegoré Roma ',
      price: '1,90,990',
    )
  ];
  List<ItemsModel> myCart = [];

  List<ItemsModel> getItems() {
    return cartItems;
  }

  void addItem(ItemsModel item) {
    myCart.add(item);
    notifyListeners();
  }

  void removeItem(ItemsModel item) {
    myCart.remove(item);
    notifyListeners();
  }

  List<ItemsModel> getMyCart() {
    return myCart;
  }
}
