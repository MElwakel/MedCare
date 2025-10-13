import 'package:flutter/material.dart';
import 'package:medcare/features/home/presentation/widgets/custom_doctor_image.dart';
import 'package:medcare/features/home/presentation/widgets/title_of_article.dart';

class ArticlePageView extends StatelessWidget {
  const ArticlePageView({super.key});

  static const String id = '/articlepageview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.green,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Article Details",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.15),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🧩 Row: Doctor photo + info
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomDoctorImage(),
                    const SizedBox(width: 10),
                    Container(
                      height: 50, // height of the vertical line
                      width: 1.2,
                      color: Colors.grey.withValues(alpha: 0.4),

                    ),
                    const SizedBox(width: 16),
                    Expanded(child: TitleOfArticle()),
                  ],
                ),

                const SizedBox(height: 20),

                // 📖 Article content
                const Text(
                  "Living a healthy lifestyle doesn’t have to be complicated. "
                  "Start with small habits like staying hydrated, getting enough sleep, "
                  "and exercising regularly. These steps improve both physical and mental health. "
                  "Make time for relaxation and a balanced diet to maintain overall well-being.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.black87,
                    fontFamily: 'aago',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
