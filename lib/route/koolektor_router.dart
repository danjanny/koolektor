import 'package:koolektor/vendor/presentation/pages/add_images_page.dart';
import 'package:koolektor/vendor/presentation/pages/add_location_page.dart';
import 'package:koolektor/vendor/presentation/pages/add_thumbnail_page.dart';
import 'package:koolektor/vendor/presentation/pages/add_title_page.dart';
import 'package:koolektor/vendor/presentation/pages/review_data_page.dart';
import 'package:qlevar_router/qlevar_router.dart';

class KoolektorRouter {
  static String loginPath = "/login-page";
  static String postPath = "/post-page";
  static String addTitlePage = "/add-title-page";
  static String addThumbnailPage = "/add-thumbnail-page";
  static String addImagesPage = "/add-images-page";
  static String addLocationPage = "/add-location-page";
  static String reviewDataPage = "/review-data-page";
  static String rootPath = "/";

  static final routes = <QRoute>[
    QRoute(path: addTitlePage, builder: () => AddTitlePage()),
    QRoute(path: addThumbnailPage, builder: () => AddThumbnailPage()),
    QRoute(path: addImagesPage, builder: () => const AddImagesPage()),
    QRoute(path: addLocationPage, builder: () => const AddLocationPage()),
    QRoute(path: reviewDataPage, builder: () => const ReviewDataPage()),
  ];
}
