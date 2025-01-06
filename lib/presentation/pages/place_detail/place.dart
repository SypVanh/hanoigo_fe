import 'package:hanoigo/generated/assets.gen.dart';

class Place {
  final int id;
  final String name;
  final String address;
  final String description;
  final String imagePath;
  final List<String> imageGallery;

  Place({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.imagePath,
    required this.imageGallery,
  });
}

final List<Place> places = [
  Place(
    id: 1,
    name: 'Khuê Văn Các - Văn Miếu',
    address: '58 P. Quốc Tử Giám, Văn Miếu, Quận Đống Đa',
    description:
        'Khuê Văn Các là một biểu tượng văn hóa đặc trưng của Hà Nội, nằm trong khuôn viên Văn Miếu - Quốc Tử Giám.',
    imagePath: Assets.images.khueVanCac.path,
    imageGallery: [
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
    ],
  ),
  Place(
    id: 2,
    name: 'Đền Quán Thánh',
    address: 'Thụy Khuê, Tây Hồ, Hà Nội',
    description: 'Đền Quán Thánh là một trong những di tích lịch sử quan trọng của thủ đô Hà Nội, thờ thần Cao Sơn.',
    imagePath: Assets.images.khueVanCac.path,
    imageGallery: [
      Assets.images.khueVanCac.path,
      Assets.images.khueVanCac.path,
    ],
  ),
];
