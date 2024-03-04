class Item_model {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;

  const Item_model(
      {required this.sound,
      this.image,
      required this.jpName,
      required this.enName});
}
