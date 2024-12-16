import 'package:flutter/material.dart';
import 'package:hanoigo/generated/colors.gen.dart';

class LeaderboardView extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboardData = [
    {"name": "Nguyễn Văn A", "avatar": "https://via.placeholder.com/150", "score": 120},
    {"name": "Trần Thị B", "avatar": "https://via.placeholder.com/150", "score": 110},
    {"name": "Lê Hoàng C", "avatar": "https://via.placeholder.com/150", "score": 105},
    {"name": "Phạm Văn D", "avatar": "https://via.placeholder.com/150", "score": 95},
    {"name": "Vũ Minh E", "avatar": "https://via.placeholder.com/150", "score": 90},
  ];

  LeaderboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Bảng Xếp Hạng Linh Thú"),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
          backgroundColor: ColorName.primaryColor,
          centerTitle: true,
          automaticallyImplyLeading: false),
      body: Column(
        children: [
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
          backgroundImage: NetworkImage(avatar),
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
        backgroundImage: NetworkImage(avatar),
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
