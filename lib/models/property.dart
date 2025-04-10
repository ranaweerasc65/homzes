class Property {
  final String title;
  final String image;
  final String location;
  final String price;
  final String numberOfBeds;
  final String numberOfBathrooms;

  Property({
    required this.title,
    required this.image,
    required this.location,
    required this.price,
    required this.numberOfBeds,
    required this.numberOfBathrooms,
  });

  factory Property.fromMap(Map<String, dynamic> map) {
    return Property(
      title: map['Title'] ?? '',
      image: map['Image'] ?? '',
      location: map['Location'] ?? '',
      price: map['Price'] ?? '',
      numberOfBeds: map['Number of beds'] ?? '',
      numberOfBathrooms: map['Number of bathrooms'] ?? '',
    );
  }
}
