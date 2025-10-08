// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// ************************************************************************** //
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// ************************************************************************** //

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome`
  String get welcome => Intl.message('Welcome', name: 'welcome');

  /// `Sign in to your account`
  String get signInToYourAccount => Intl.message(
        'Sign in to your account',
        name: 'signInToYourAccount',
      );

  /// `Full Name`
  String get fullName => Intl.message('Full Name', name: 'fullName');

  /// `Email`
  String get email => Intl.message('Email', name: 'email');

  /// `Password`
  String get password => Intl.message('Password', name: 'password');

  /// `Confirm Password`
  String get confirmPassword =>
      Intl.message('Confirm Password', name: 'confirmPassword');

  /// `Sign In`
  String get signIn => Intl.message('Sign In', name: 'signIn');

  /// `Forgot your password?`
  String get forgotPassword =>
      Intl.message('Forgot your password?', name: 'forgotPassword');

  /// `Or continue with social account`
  String get orContinueWithSocialAccount => Intl.message(
        'Or continue with social account',
        name: 'orContinueWithSocialAccount',
      );

  /// `Don't have an account? `
  String get dontHaveAnAccount =>
      Intl.message('Don\'t have an account? ', name: 'dontHaveAnAccount');

  /// `Already have an account? `
  String get alreadyHaveAnAccount =>
      Intl.message('Already have an account? ', name: 'alreadyHaveAnAccount');

  /// `Sign Up`
  String get signUp => Intl.message('Sign Up', name: 'signUp');

  /// `Join MediCare!`
  String get joinMediCare =>
      Intl.message('Join MediCare!', name: 'joinMediCare');

  /// `Sign up easily, book your medical consultation, and stay healthy anytime`
  String get signUpEasilyBookYourMedicalConsultationAndStayHealthyAnytime =>
      Intl.message(
        'Sign up easily, book your medical consultation, and stay healthy anytime',
        name:
            'signUpEasilyBookYourMedicalConsultationAndStayHealthyAnytime',
      );

  // 🩺 Medical Services Section
  /// `Medical Service`
  String get medicalService =>
      Intl.message('Medical Service', name: 'medicalService');

  /// `Surgical Operation`
  String get surgicalOperation =>
      Intl.message('Surgical Operation', name: 'surgicalOperation');

  /// `Choose a Medical Service`
  String get chooseMedicalService =>
      Intl.message('Choose a Medical Service', name: 'chooseMedicalService');

  /// `Choose a Surgical Operation`
  String get chooseSurgicalOperation => Intl.message(
        'Choose a Surgical Operation',
        name: 'chooseSurgicalOperation',
      );

  /// `Benefit from offers and see doctors' ratings before and after using the services.`
  String get medicalServiceDesc => Intl.message(
        "Benefit from offers and see doctors' ratings before and after using the services.",
        name: 'medicalServiceDesc',
      );

  /// `Select the type of surgery, operation, governorate and area, or search by name.`
  String get surgicalOperationDesc => Intl.message(
        'Select the type of surgery, operation, governorate and area, or search by name.',
        name: 'surgicalOperationDesc',
      );

  /// `Select Service Type`
  String get selectServiceType =>
      Intl.message('Select Service Type', name: 'selectServiceType');

  /// `Service Type`
  String get serviceType =>
      Intl.message('Service Type', name: 'serviceType');

  /// `Select Service`
  String get selectService =>
      Intl.message('Select Service', name: 'selectService');

  /// `Service`
  String get service => Intl.message('Service', name: 'service');

  /// `Select Operation Type`
  String get selectOperationType =>
      Intl.message('Select Operation Type', name: 'selectOperationType');

  /// `Operation Type`
  String get operationType =>
      Intl.message('Operation Type', name: 'operationType');

  /// `Select Operation`
  String get selectOperation =>
      Intl.message('Select Operation', name: 'selectOperation');

  /// `Operation`
  String get operation => Intl.message('Operation', name: 'operation');

  /// `Governorate`
  String get governorate =>
      Intl.message('Governorate', name: 'governorate');

  /// `Select Area`
  String get selectArea =>
      Intl.message('Select Area', name: 'selectArea');

  /// `Area`
  String get area => Intl.message('Area', name: 'area');

  /// `Or type the service name here...`
  String get orTypeServiceName =>
      Intl.message('Or type the service name here...', name: 'orTypeServiceName');

  /// `Or type the operation name here...`
  String get orTypeOperationName => Intl.message(
        'Or type the operation name here...',
        name: 'orTypeOperationName',
      );

  /// `Search`
  String get search => Intl.message('Search', name: 'search');
  /// `dentistry`
  String get dentistry => Intl.message('dentistry', name: 'dentistry');
  /// `cardiology`
  String get cardiology => Intl.message('cardiology', name: 'cardiology');
  /// `ophthalmology`
  String get ophthalmology => Intl.message('ophthalmology', name: 'ophthalmology'); 
  /// `orthopedics`
  String get orthopedics => Intl.message('orthopedics', name: 'orthopedics');
  /// `general surgery`
  String get generalSurgery => Intl.message('general surgery', name: 'generalSurgery');
  /// `plastic surgery`
  String get plasticSurgery => Intl.message('plastic surgery', name: 'plasticSurgery');
  /// `neurology`  
  String get neurology => Intl.message('neurology', name: 'neurology');
  /// `pediatrics`
  String get pediatrics => Intl.message('pediatrics', name: 'pediatrics');
  /// `dermatology`
  String get dermatology => Intl.message('dermatology', name: 'dermatology');
  /// `gynecology`  
  String get gynecology => Intl.message('gynecology', name: 'gynecology');
  /// `urology`  
  String get urology => Intl.message('urology', name: 'urology');
  /// `cataract surgery`
  String get cataractSurgery => Intl.message('cataract surgery', name: 'cataractSurgery');
  /// `heartSurgery` 
  String get heartSurgery => Intl.message('heart surgery', name: 'heartSurgery');
  /// `eyeSurgery`
  String get eyeSurgery => Intl.message('eye Surgery', name: 'eyeSurgery');
  /// `bypassSurgery `
  String get bypassSurgery => Intl.message('bypass surgery', name: 'bypassSurgery');
  /// `valueReplacement`
  String get valveReplacement => Intl.message('valve replacement', name: 'valveReplacement');
    /// `dentistry`
    /// `cataract`
  String get cataract => Intl.message('cataract', name: 'cataract');

  /// `lasik`
  String get lasik => Intl.message('lasik', name: 'lasik');

  /// `rhinoplasty`
  String get rhinoplasty => Intl.message('rhinoplasty', name: 'rhinoplasty');

  /// `liposuction`
  String get liposuction => Intl.message('liposuction', name: 'liposuction');

  /// `appendectomy`
  String get appendectomy => Intl.message('appendectomy', name: 'appendectomy');

  /// `gallbladder removal`
  String get gallbladderRemoval => Intl.message('gallbladder removal', name: 'gallbladderRemoval');


  /// `assiut`
  String get assiut => Intl.message('assiut', name: 'assiut');

  /// `abnoub`
  String get abnoub => Intl.message('abnoub', name: 'abnoub');

  /// `manfalut`
  String get manfalut => Intl.message('manfalut', name: 'manfalut');

  /// `dairut`
  String get dairut => Intl.message('dairut', name: 'dairut');

  /// `elBadari`
  String get elBadari => Intl.message('el badari', name: 'elBadari');

  /// `elQusiya`
  String get elQusiya => Intl.message('el qusiya', name: 'elQusiya');


}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales => const [
        Locale.fromSubtags(languageCode: 'en'),
        Locale.fromSubtags(languageCode: 'ar'),
      ];

  @override
  bool isSupported(Locale locale) =>
      supportedLocales.any((l) => l.languageCode == locale.languageCode);

  @override
  Future<S> load(Locale locale) => S.load(locale);

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
}
