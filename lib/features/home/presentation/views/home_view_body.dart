import 'package:flutter/material.dart';
import 'package:medcare/features/home/presentation/widgets/build_category.dart';
import 'package:medcare/features/home/presentation/widgets/custom_text_field.dart';
import 'package:medcare/features/home/presentation/widgets/doctors_list_view.dart';
import 'package:medcare/features/home/presentation/widgets/family_health_banner.dart';
import 'package:medcare/features/home/presentation/widgets/head_of_home_page.dart';
import 'package:medcare/features/home/presentation/widgets/health_article_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child:  CustomScrollView(
        slivers: [

          SliverToBoxAdapter(

            child: Padding(

              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  

                  HeadOfHomePage(),

                  const SizedBox(height: 16),

                  //  البحث 
                  CustomTextField(),

                  const SizedBox(height: 20),

                  //  الايقونات الاربعه 
                  BuildCategory(),

                  const SizedBox(height: 24),

                  // كارت الدعايه 
                  FamilyHealthBanner(),

                  const SizedBox(height: 20),

                  //  قسم الأطباء 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Top Doctor",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      // Text(
                      //   "See all",
                      //   style: TextStyle(
                      //     fontSize: 14,
                      //     color: Colors.green,
                      //   ),
                      // ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // ===== قائمة الأطباء =====
                  const DoctorsListView(),

                  const SizedBox(height: 20),

                  // ===== قسم المقالات =====
                  
                  HealthArticleSection(),
                ],
              ),
            ),
          ),
        ],
      ),
      );
  }

}