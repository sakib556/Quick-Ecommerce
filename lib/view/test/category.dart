class CategoryModel {
  final int id;
  final String name;
  final String imageLink;

  CategoryModel(
      {required this.id, required this.name, required this.imageLink});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      imageLink: json['imageLink'],
    );
  }
}
