import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hanoigo/generated/assets.gen.dart';
import 'package:hanoigo/generated/colors.gen.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Bộ sưu tập',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.help_outline, color: Colors.white),
              onPressed: () {
                // Help button logic
              },
            ),
          ],
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
          backgroundColor: ColorName.primaryColor,
          centerTitle: true,
          automaticallyImplyLeading: false),
      body: Column(
        children: [
          // Top image and title section
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SvgPicture.asset(
                  Assets.icons.dragon.path,
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Linh Thú Thức Tỉnh',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                const Text(
                  'Mô Hình Truyền Thuyết',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Badge grid section
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Number of badges per row
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
              ),
              itemCount: 12, // Adjust based on the number of badges
              itemBuilder: (context, index) {
                bool isUnlocked = index < 6; // Example logic
                return Container(
                  decoration: BoxDecoration(
                    color: isUnlocked ? Colors.green : Colors.grey[300],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey[400]!,
                      width: 2.0,
                    ),
                  ),
                  child: isUnlocked
                      ? SvgPicture.asset(getImagePath(index))
                      : Icon(
                          Icons.lock,
                          color: Colors.grey[600],
                          size: 36.0,
                        ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String getImagePath(int index) {
    switch (index) {
      case 0:
        return Assets.icons.buffalo.path;
      case 1:
        return Assets.icons.chicken.path;
      case 2:
        return Assets.icons.goat.path;
      case 3:
        return Assets.icons.horse.path;
      case 4:
        return Assets.icons.snake.path;
      default:
        return Assets.icons.dragon.path;
    }
  }
}
