class ProductModel {
  final int id;
  final String title;
  final double prince;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.prince,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        prince: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: RatingModel.fromJson(jsonData('rating')));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
