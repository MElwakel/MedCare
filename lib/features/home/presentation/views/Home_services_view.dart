import 'package:flutter/material.dart';
import 'package:medcare/features/home/presentation/widgets/home_visit_elements.dart';

class HomeServicesView extends StatelessWidget {
  const HomeServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 241, 243),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Care",
                  style: TextStyle(
                    color: Color.fromARGB(255, 31, 2, 102),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Med",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "احجز زيارة منزلية",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10),
            Home_visit_elements(
              Service_description:
                  'نوفر لك خدمة زيارة الطبيب إلى المنزل لتلقّي الفحص والعلاج براحة تامة، '
                  'على يد نخبة من الأطباء المتخصصين، '
                  'لتحصل على رعاية طبية آمنة دون الحاجة لمغادرة منزلك.',
              impath: 'assets/images/docvis.jpg',
              name_service: "    زيارة طبيب منزلية",
            ),
            Home_visit_elements(
              Service_description:
                  'نوفر لك خدمة الرعاية المنزلية لتلقّي العناية والمتابعة الصحية داخل منزلك، '
                  'على يد فريق تمريضي مؤهل ومجهز، '
                  'لتحصل على دعم طبي آمن ومريح دون الحاجة لزيارة المراكز الصحية.',
              impath: 'assets/images/homecare.jpg',
              name_service: "    عناية مركزة منزلية",
            ),
            
            Home_visit_elements(
              Service_description:
                  'نوفر لك خدمة التمريض المنزلي لتلقّي الرعاية الطبية المستمرة داخل منزلك، '
                  'من خلال طاقم تمريضي متخصص يهتم بمتابعتك وتنفيذ الخطة العلاجية بدقة، '
                  'لتضمن راحة وسلامة تامة دون الحاجة للتنقل أو البقاء في المستشفى.',
              impath: 'assets/images/Homenursing.jpg',
              name_service: "    تمريض منزلي",
            ),
          ],
        ),
      ),
    );
  }
}
