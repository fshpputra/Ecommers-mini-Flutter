import 'package:flutter/cupertino.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'ZOOM Freak', price: '2.350.000', description: 'The forward-thinking design of his latest signature shoe.', imagePath: 'lib/image/air-jordan-1.png'),
    Shoe(name: 'Air Jordan', price: '2.300.000', description: 'The forward-thinking design of his latest signature shoe.', imagePath: 'lib/image/air-jordan-2.png'),
    Shoe(name: 'KD Treys', price: '2.500.000', description: 'The forward-thinking design of his latest signature shoe.', imagePath: 'lib/image/air-jordan-3.png'),
    Shoe(name: 'Kyrie', price: '2.150.000', description: 'The forward-thinking design of his latest signature shoe.', imagePath: 'lib/image/air-jordan-4.png'),

  ];

  // list of items in user cart
  List<Shoe> userCart = [];
  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }
  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }
  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}