class Item {
  final String id;
  final String name;
  final String description;
  final String price;
  final String color;
  final String image;

  Item(
      this.id, this.name, this.description, this.price, this.color, this.image);
}

class CatalogModel {
  static final item = [
    Item("R001", "Computer", "Brand New Product", "32,059.00", "black",
        "https://sc04.alicdn.com/kf/H2c986c73345141a9b17f84da2b348911G.jpg")
  ];
}
