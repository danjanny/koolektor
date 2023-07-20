class Post {
  final String? id;
  final String? userId;
  final String? title;
  final String? thumbnailImage;
  final String? images;
  final String? description;
  final String? location;
  final String? ipAddress;
  final String? provinsi;
  final String? kota;
  final String? kecamatan;
  final String? kelurahan;
  final String? price;
  final String? createdAt;
  final String? modifiedAt;

  Post(
      {this.id,
      this.userId,
      this.title,
      this.thumbnailImage,
      this.images,
      this.description,
      this.location,
      this.ipAddress,
      this.provinsi,
      this.kota,
      this.kecamatan,
      this.kelurahan,
      this.price,
      this.createdAt,
      this.modifiedAt});
}
