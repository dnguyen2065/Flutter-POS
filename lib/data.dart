/// TODOS:
/// please somebody make these constructors better
/// if you do that please also make a dummy function that returns List<Category>
/// then verify that it works with the UI in `order.dart`

// CLASSES
class Item {
  String name;
  double price;

  Item(this.name, this.price);

  void setName(String name) {
    name = name;
  }

  void setPrice(double price) {
    price = price;
  }
}

class Category {
  String name;
  List<Item> items;

  Category(this.name, this.items);
}
