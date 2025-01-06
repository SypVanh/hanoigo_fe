import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hanoigo/foundation/extension/text_ext.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:hanoigo/presentation/pages/location/location.dart';
import 'package:hanoigo/presentation/pages/place_detail/place.dart';
import 'package:hanoigo/presentation/pages/place_detail/review.dart';
import 'package:hanoigo/presentation/pages/styles/text_style.dart';

class PlaceDetailView extends StatefulWidget {
  final int placeId;

  const PlaceDetailView({super.key, required this.placeId});

  @override
  _PlaceDetailViewState createState() => _PlaceDetailViewState();

  factory PlaceDetailView.fromArguments() {
    final args = Get.arguments as Map<String, dynamic>?;
    final placeId = args?['placeId'] ?? 0;
    return PlaceDetailView(placeId: placeId);
  }
}

class _PlaceDetailViewState extends State<PlaceDetailView> {
  int placeId = 0;

  @override
  void initState() {
    super.initState();
    placeId = widget.placeId;
  }

  @override
  Widget build(BuildContext context) {
    final place = getLocationByPlaceId(placeId);

    final tabs = List.generate(
      3,
      (index) {
        switch (index) {
          case 0:
            return const Text('Giới thiệu');
          case 1:
            return const Text('Ảnh');
          case 2:
            return const Text('Bài đánh giá');
          default:
            return const Text('Giới thiệu');
        }
      },
    );

    final views = [
      IntroductionTabContentView(place: place),
      ImageGalleryTabContentView(place: place),
      CommentTabContentView(place: place),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(place.name, style: const TextStyle(fontSize: 16, color: Colors.white)),
            Text(place.address, style: const TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
        backgroundColor: ColorName.primaryColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const Gap(8),
          Image.asset(place.imageUrl, width: 130, height: 130),
          const Gap(8),
          Expanded(
            child: DefaultTabController(
              length: tabs.length,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    indicatorColor: ColorName.primaryColor,
                    unselectedLabelStyle: const Text('').workSan_14W500().color(ColorName.textHintColor).style,
                    labelStyle: const Text('').workSan_14W500().color(ColorName.primaryColor).style,
                    tabs: tabs,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: views,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroductionTabContentView extends StatelessWidget {
  final Location place;

  const IntroductionTabContentView({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              place.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageGalleryTabContentView extends StatelessWidget {
  final Location place;

  const ImageGalleryTabContentView({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 1,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            place.imageUrl,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}

class CommentTabContentView extends StatelessWidget {
  final Location place;

  const CommentTabContentView({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    final reviews = getReviewsByPlaceId(place.id);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...reviews.map((review) => _buildReviewCard(
                name: review.name,
                role: review.role,
                date: review.date,
                rating: review.rating,
                comment: review.comment,
              )),
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
