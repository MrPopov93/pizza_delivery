class PlaceModel {
  final String name;
  final String address;
  final double rating;
  final int commuteTime;
  final int commitDistance;
  final String imagePreview;

  const PlaceModel({
    required this.name,
    required this.address,
    required this.rating,
    required this.commuteTime,
    required this.commitDistance,
    required this.imagePreview,
  });
}
