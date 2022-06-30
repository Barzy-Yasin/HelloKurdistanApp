class Recipe {
  int id;
  String name;
  String type;
  int price;
  String image;
  String description;

  Recipe(
    this.id,
    this.name,
    this.type,
    this.price,
    this.image,
    this.description,
  );
  static List<Recipe> bikes = [
    Recipe(1, 'De Rosa', 'Road-bike', 1800, "images/roadbike1.jpg",
        "Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is simply text copy that serves to fill a space without actually saying anything meaningful. It's essentially nonsense text that still gives an idea of what real words will look like in the final product."),
    Recipe(2, 'Festka', 'Road-bike', 1650, "images/roadbike2.jpg",
        "Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is simply text copy that serves to fill a space without actually saying anything meaningful. It's essentially nonsense text that still gives an idea of what real words will look like in the final product."),
    Recipe(3, 'Giant', 'MTB', 2350, "images/roadbike3.jpg",
        "Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is simply text copy that serves to fill a space without actually saying anything meaningful. It's essentially nonsense text that still gives an idea of what real words will look like in the final product."),
    Recipe(4, 'Sanremo', 'Road-bike', 400, "images/roadbike4.jpg",
        "Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is simply text copy that serves to fill a space without actually saying anything meaningful. It's essentially nonsense text that still gives an idea of what real words will look like in the final product."),
  ];
}
