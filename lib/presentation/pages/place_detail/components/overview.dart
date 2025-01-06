part of '../place_detail_view.dart';

extension OverviewScreen on PlaceDetailView {
  Widget _buildOverviewTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // GridView.count(
          //   crossAxisCount: 2,
          //   crossAxisSpacing: 16,
          //   mainAxisSpacing: 16,
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   children: [
          //     _buildHighlightCard('1070 - Nay', 'Năm hoạt động', Icons.calendar_today),
          //     _buildHighlightCard('8:00 - 17:00', 'Giờ hoạt động', Icons.access_time),
          //     _buildHighlightCard('15 - 30K', 'Giá vé', Icons.attach_money),
          //     _buildHighlightCard('4 - 10.2K', 'Khách mỗi ngày', Icons.people),
          //   ],
          // ),
          // const SizedBox(height: 20),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     const Text(
          //       'Bài đánh giá nổi bật',
          //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //     ),
          //     TextButton(
          //       onPressed: () {},
          //       child: const Text('Xem tất cả'),
          //     ),
          //   ],
          // ),
          _buildReviewCard(
            name: 'Minh Pham',
            role: 'Bậc thầy lịch sử',
            date: '30/11/2023',
            rating: 5,
            comment: 'Trải nghiệm đáng nhớ, sẽ ghé thăm lần sau!',
          ),
          _buildReviewCard(
            name: 'Masi.',
            role: 'Nhà sưu tầm tiềm năng',
            date: '30/11/2023',
            rating: 5,
            comment: 'Mình đã tới đây 3 lần, lần nào cũng có nhiều kỷ niệm với nơi này~',
          ),
          const SizedBox(height: 20),
          const Text(
            'Chuyên mục hỏi đáp',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const TextField(
            maxLength: 500,
            decoration: InputDecoration(
              hintText: 'Hãy là người đầu tiên đặt câu hỏi...',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.send),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHighlightCard(String title, String subtitle, IconData icon) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.orange),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewCard({
    required String name,
    required String role,
    required String date,
    required int rating,
    required String comment,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: const Icon(Icons.person, color: Colors.grey),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                          // Text(role, style: const TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Text(date, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: List.generate(
                      rating,
                      (index) => const Icon(Icons.star, color: Colors.yellow, size: 20),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(comment),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
