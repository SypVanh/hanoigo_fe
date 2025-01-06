class Review {
  final String name;
  final String role;
  final String date;
  final int rating;
  final String comment;
  final int placeId;

  Review({
    required this.name,
    required this.role,
    required this.date,
    required this.rating,
    required this.comment,
    required this.placeId,
  });
}

List<Review> getReviewsByPlaceId(int placeId) {
  List<Review> allReviews = [
    Review(
        name: 'Minh Pham',
        role: 'Bậc thầy lịch sử',
        date: '30/11/2023',
        rating: 5,
        comment: 'Trải nghiệm đáng nhớ, sẽ ghé thăm lần sau!',
        placeId: 1),
    Review(
        name: 'Masi.',
        role: 'Nhà sưu tầm tiềm năng',
        date: '30/11/2023',
        rating: 5,
        comment: 'Mình đã tới đây 3 lần, lần nào cũng có nhiều kỷ niệm với nơi này~',
        placeId: 1),
    Review(
        name: 'Hien Nguyen',
        role: 'Du khách',
        date: '01/12/2023',
        rating: 4,
        comment: 'Chỗ này rất đẹp nhưng có thể cải thiện dịch vụ.',
        placeId: 2),
    Review(
        name: 'Linh Tran',
        role: 'Nhiếp ảnh gia',
        date: '02/12/2023',
        rating: 4,
        comment: 'Cảnh vật ở đây rất ấn tượng, mình chụp được rất nhiều bức ảnh đẹp.',
        placeId: 2),
  ];

  return allReviews.where((review) => review.placeId == placeId).toList();
}
