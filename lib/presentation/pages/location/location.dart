import 'package:hanoigo/generated/assets.gen.dart';

class Location {
  final int id;
  final String name;
  final String address;
  final String description;
  final String imageUrl;

  const Location({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.imageUrl,
  });
}

List<Location> hanoiLocations = [
  Location(
    id: 1,
    name: 'Nhà Hát Lớn Hà Nội',
    address: '1 Tràng Tiền, Hoàn Kiếm, Hà Nội',
    description:
        'Nhà Hát Lớn Hà Nội là công trình kiến trúc nghệ thuật đặc sắc, nơi diễn ra nhiều sự kiện văn hóa lớn.',
    imageUrl: Assets.images.nhaHatLon.path,
  ),
  Location(
    id: 2,
    name: 'Đền Ngọc Sơn',
    address: 'Hoàn Kiếm, Hà Nội',
    description:
        'Đền Ngọc Sơn là một trong những di tích lịch sử nổi tiếng nằm trên hồ Hoàn Kiếm, mang ý nghĩa văn hóa và tâm linh lớn.',
    imageUrl: Assets.images.denNgocSon.path,
  ),
  Location(
    id: 3,
    name: 'Khuê Văn Các',
    address: '58 Quốc Tử Giám, Đống Đa, Hà Nội',
    description:
        'Khuê Văn Các là biểu tượng của Văn Miếu - Quốc Tử Giám, nơi tôn vinh truyền thống hiếu học của dân tộc.',
    imageUrl: Assets.images.khueVanCac.path,
  ),
  Location(
    id: 4,
    name: 'Hoàng Thành Thăng Long',
    address: '19C Hoàng Diệu, Ba Đình, Hà Nội',
    description:
        'Di tích Hoàng Thành Thăng Long, được UNESCO công nhận là di sản văn hóa thế giới, là biểu tượng lịch sử và văn hóa lâu đời của Việt Nam.',
    imageUrl: Assets.images.hoangThanhThangLong.path,
  ),
  Location(
    id: 5,
    name: 'Lăng Chủ Tịch',
    address: '2 Hùng Vương, Ba Đình, Hà Nội',
    description:
        'Lăng Chủ Tịch Hồ Chí Minh là nơi an nghỉ của vị lãnh tụ kính yêu, mang ý nghĩa lịch sử và chính trị to lớn.',
    imageUrl: Assets.images.langChuTich.path,
  ),
];

Location getLocationByPlaceId(int placeId) {
  return hanoiLocations.firstWhere(
    (location) => location.id == placeId,
    orElse: () => hanoiLocations.first,
  );
}
