import 'package:flutter/material.dart';
import 'package:medcare/features/doctors/presentation/views/widgets/popuar_doctor_list_view.dart';
import '../../../../../core/widgets/back_icon_widget.dart';
import 'category_doctor_sliver_list.dart';

class DoctorsViewBody extends StatelessWidget {
  const DoctorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: const [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BackIconWidget(),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Doctor",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'LibreBaskerville',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(height: 310, child: PopularDoctorListView()),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'LibreBaskerville',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
          CategoryDoctorSliverList(),
        ],
      ),
    );
  }
}

