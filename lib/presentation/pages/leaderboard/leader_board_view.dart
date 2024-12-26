import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';

class LeaderboardView extends StatefulWidget {
  const LeaderboardView({super.key});

  @override
  State<LeaderboardView> createState() => _LeaderboardViewState();
}

class _LeaderboardViewState extends State<LeaderboardView> {
  // Chế độ xem hiện tại
  String _selectedMode = 'Tháng'; // Mặc định là "Tháng"

  final List<String> _modes = ['Tháng', 'Tuần', 'Ngày']; // Các chế độ xem

  final List<Map<String, dynamic>> leaderboardData = [
    {"name": "Nguyễn Văn A", "avatar": Assets.images.naruto.path, "score": 120},
    {"name": "Trần Thị B", "avatar": Assets.images.sasuke.path, "score": 110},
    {"name": "Lê Hoàng C", "avatar": Assets.images.sakura.path, "score": 105},
    {"name": "Phạm Văn D", "avatar": Assets.images.kakashi.path, "score": 95},
    {"name": "Vũ Minh E", "avatar": Assets.images.obito.path, "score": 90},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bảng Xếp Hạng Linh Thú"),
        titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        backgroundColor: ColorName.primaryColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          // Dropdown chọn chế độ xem
          _buildModeSelector(),

          // Phần Top 3
          _buildTopThree(context),

          // Danh sách còn lại
          Expanded(
            child: ListView.builder(
              itemCount: leaderboardData.length - 3,
              itemBuilder: (context, index) {
                final user = leaderboardData[index + 3];
                return _buildLeaderboardTile(
                  rank: index + 4,
                  name: user['name'],
                  avatar: user['avatar'],
                  score: user['score'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModeSelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Xem theo:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          DropdownButton<String>(
            value: _selectedMode,
            items: _modes.map((mode) {
              return DropdownMenuItem<String>(
                value: mode,
                child: Text(mode),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                _selectedMode = newValue!;
                // Thay đổi dữ liệu bảng xếp hạng tương ứng tại đây (nếu có)
                // Ví dụ: fetchLeaderboardData(newValue);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTopThree(BuildContext context) {
    return Container(
      color: Colors.red.shade50,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // 2nd Place
          _buildTopPlaceCard(
            context,
            rank: 2,
            name: leaderboardData[1]['name'],
            avatar: leaderboardData[1]['avatar'],
            score: leaderboardData[1]['score'],
            backgroundColor: Colors.amber.shade200,
          ),
          // 1st Place
          _buildTopPlaceCard(
            context,
            rank: 1,
            name: leaderboardData[0]['name'],
            avatar: leaderboardData[0]['avatar'],
            score: leaderboardData[0]['score'],
            backgroundColor: Colors.amber.shade400,
          ),
          // 3rd Place
          _buildTopPlaceCard(
            context,
            rank: 3,
            name: leaderboardData[2]['name'],
            avatar: leaderboardData[2]['avatar'],
            score: leaderboardData[2]['score'],
            backgroundColor: Colors.amber.shade300,
          ),
        ],
      ),
    );
  }

  Widget _buildTopPlaceCard(BuildContext context,
      {required int rank,
      required String name,
      required String avatar,
      required int score,
      required Color backgroundColor}) {
    return Column(
      children: [
        CircleAvatar(
          radius: rank == 1 ? 45 : 35, // Highlight for 1st place
          backgroundImage: AssetImage(avatar) as ImageProvider,
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: rank == 1 ? 18 : 16,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          "$score Linh Thú",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey.shade700,
              ),
        ),
      ],
    );
  }

  Widget _buildLeaderboardTile({required int rank, required String name, required String avatar, required int score}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatar) as ImageProvider,
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$score Linh Thú"),
      trailing: Text(
        "#$rank",
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
