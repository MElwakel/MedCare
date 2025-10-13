import 'package:go_router/go_router.dart';
import 'package:medcare/features/auth/presentaion/views/create_new_password_view.dart';
import 'package:medcare/features/auth/presentaion/views/email_verify_view.dart';
import 'package:medcare/features/auth/presentaion/views/phone_verify_view.dart';
import 'package:medcare/features/auth/presentaion/views/sign_in_view.dart';
import 'package:medcare/features/auth/presentaion/views/sign_up_screen.dart';
import 'package:medcare/features/auth/presentaion/views/verify_your_code_view.dart';
import 'package:medcare/features/auth/presentaion/views/verify_your_identity_view.dart';
import 'package:medcare/features/chat/presentation/views/all_chat_view.dart';
import 'package:medcare/features/doctors/presentation/views/doctor_details_view.dart';
import 'package:medcare/features/doctors/presentation/views/doctors_view.dart';
import 'package:medcare/features/home/presentation/views/article_view.dart';
import 'package:medcare/features/home/presentation/views/home_view.dart';
import 'package:medcare/features/hospital/presentation/views/hospital_view.dart';
import 'package:medcare/features/pharmacies/presentation/views/pharmacies_view.dart';
import 'package:medcare/features/splash/splash_view.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => const SignInView(),
    ),

    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),

    GoRoute(
      path: '/verfiyIdentity',
      builder: (context, state) => const VerifyYourIdentity(),
    ),

     GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpScreen(),
    ),

    GoRoute(
      path: '/phonenumberview',
      builder: (context, state) => const PhoneNumberVerifyView(),
    ),

     GoRoute(
      path: '/emailverify',
      builder: (context, state) => const EmailVerifyView(),
    ),
    GoRoute(
      path: '/verifyyourcodeview',
      builder: (context, state) => const VerifyYourCodeView(),
    ),

     GoRoute(
      path: '/createnewpassword',
      builder: (context, state) => const CreateNewPasswordView(),
    ),

    GoRoute(
      path: '/doctorsview',
      builder: (context, state) => const DoctorsView(),
    ),

    GoRoute(
      path: '/pharmaciesview',
      builder: (context, state) => const PharmaciesView(),
    ),

    GoRoute(
      path: '/hospitalview',
      builder: (context, state) => const HospitalView(),
    ),

     GoRoute(
      path: '/doctordetials',
      builder: (context, state) => const DoctorDetials(),
    ),

    GoRoute(
      path: AllChatView.id,
      builder: (context, state) => const AllChatView(),
    ),

     GoRoute(
      path:'/articlepageview',
      builder: (context, state) => const ArticlePageView(),
    ),

  ],
);

//ArticlePageView