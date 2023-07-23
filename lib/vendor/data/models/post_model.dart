import 'package:flutter/foundation.dart';
import 'package:koolektor/vendor/domain/entities/post.dart';

class PostModel extends Post {
  PostModel(
      {@required userId,
      @required title,
      @required thumbnailImage,
      @required images,
      @required description,
      @required location,
      @required ipAddress,
      @required provinsi,
      @required kota,
      @required kecamatan,
      @required kelurahan,
      @required price})
      : super(
            userId: userId,
            title: title,
            thumbnailImage: thumbnailImage,
            images: images,
            description: description,
            location: location,
            ipAddress: ipAddress,
            provinsi: provinsi,
            kota: kota,
            kecamatan: kecamatan,
            kelurahan: kelurahan,
            price: price);
}
