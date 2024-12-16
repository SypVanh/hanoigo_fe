import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hanoigo/generated/colors.gen.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  String userName = "Vanh"; // Tên mặc định
  String? avatarPath; // Đường dẫn avatar (local path sau khi tải lên)
  String selectedLanguage = "Tiếng Việt"; // Ngôn ngữ mặc định

  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = userName; // Gán tên mặc định vào TextField
  }

  // Hàm tải ảnh từ thư viện
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        avatarPath = pickedFile.path; // Lưu đường dẫn ảnh vào avatarPath
      });
    }
  }

  // Widget chính
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thông Tin Cá Nhân"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: ColorName.primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false, // Không hiển thị nút "Back"
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Hiển thị avatar
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: avatarPath != null ? Image.file(File(avatarPath!)).image : null, // Ảnh mặc định
                child: avatarPath == null
                    ? const Icon(
                        Icons.camera_alt,
                        size: 30,
                        color: Colors.white,
                      )
                    : null,
              ),
            ),
            const SizedBox(height: 20),

            // Thay đổi tên
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: "Tên",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.person),
              ),
              onChanged: (value) {
                setState(() {
                  userName = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Dropdown thay đổi ngôn ngữ
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Ngôn ngữ:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                DropdownButton<String>(
                  value: selectedLanguage,
                  items: ["Tiếng Việt", "English"]
                      .map(
                        (lang) => DropdownMenuItem(
                          value: lang,
                          child: Text(lang),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value!;
                    });
                  },
                ),
              ],
            ),
            const Spacer(),

            // Nút lưu
            ElevatedButton(
              onPressed: () {
                // Xử lý lưu thông tin (tạm thời hiển thị SnackBar)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Đã lưu thông tin!"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                backgroundColor: ColorName.primaryColor,
              ),
              child: const Text(
                "Lưu",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
