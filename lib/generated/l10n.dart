// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

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
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Sign in to your account`
  String get signInToYourAccount {
    return Intl.message(
      'Sign in to your account',
      name: 'signInToYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Forgot your password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with social account`
  String get orContinueWithSocialAccount {
    return Intl.message(
      'Or continue with social account',
      name: 'orContinueWithSocialAccount',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Join MediCare!`
  String get joinMediCare {
    return Intl.message(
      'Join MediCare!',
      name: 'joinMediCare',
      desc: '',
      args: [],
    );
  }

  /// `Sign up easily, book your medical consultation, and stay healthy anytime`
  String get signUpEasilyBookYourMedicalConsultationAndStayHealthyAnytime {
    return Intl.message(
      'Sign up easily, book your medical consultation, and stay healthy anytime',
      name: 'signUpEasilyBookYourMedicalConsultationAndStayHealthyAnytime',
      desc: '',
      args: [],
    );
  }

  /// `Choose a Medical Service`
  String get chooseMedicalService {
    return Intl.message(
      'Choose a Medical Service',
      name: 'chooseMedicalService',
      desc: '',
      args: [],
    );
  }

  /// `Choose a Surgical Operation`
  String get chooseSurgicalOperation {
    return Intl.message(
      'Choose a Surgical Operation',
      name: 'chooseSurgicalOperation',
      desc: '',
      args: [],
    );
  }

  /// `Select from our list of medical services including consultations, diagnostics, and more.`
  String get medicalServiceDesc {
    return Intl.message(
      'Select from our list of medical services including consultations, diagnostics, and more.',
      name: 'medicalServiceDesc',
      desc: '',
      args: [],
    );
  }

  /// `Select your preferred surgical operation type and location.`
  String get surgicalOperationDesc {
    return Intl.message(
      'Select your preferred surgical operation type and location.',
      name: 'surgicalOperationDesc',
      desc: '',
      args: [],
    );
  }

  /// `Medical Service`
  String get medicalService {
    return Intl.message(
      'Medical Service',
      name: 'medicalService',
      desc: '',
      args: [],
    );
  }

  /// `Surgical Operation`
  String get surgicalOperation {
    return Intl.message(
      'Surgical Operation',
      name: 'surgicalOperation',
      desc: '',
      args: [],
    );
  }

  /// `Select Service Type`
  String get selectServiceType {
    return Intl.message(
      'Select Service Type',
      name: 'selectServiceType',
      desc: '',
      args: [],
    );
  }

  /// `Select Service`
  String get selectService {
    return Intl.message(
      'Select Service',
      name: 'selectService',
      desc: '',
      args: [],
    );
  }

  /// `Service Type`
  String get serviceType {
    return Intl.message(
      'Service Type',
      name: 'serviceType',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get service {
    return Intl.message('Service', name: 'service', desc: '', args: []);
  }

  /// `Select Operation Type`
  String get selectOperationType {
    return Intl.message(
      'Select Operation Type',
      name: 'selectOperationType',
      desc: '',
      args: [],
    );
  }

  /// `Select Operation`
  String get selectOperation {
    return Intl.message(
      'Select Operation',
      name: 'selectOperation',
      desc: '',
      args: [],
    );
  }

  /// `Operation Type`
  String get operationType {
    return Intl.message(
      'Operation Type',
      name: 'operationType',
      desc: '',
      args: [],
    );
  }

  /// `Operation`
  String get operation {
    return Intl.message('Operation', name: 'operation', desc: '', args: []);
  }

  /// `Governorate`
  String get governorate {
    return Intl.message('Governorate', name: 'governorate', desc: '', args: []);
  }

  /// `Select Area`
  String get selectArea {
    return Intl.message('Select Area', name: 'selectArea', desc: '', args: []);
  }

  /// `Area`
  String get area {
    return Intl.message('Area', name: 'area', desc: '', args: []);
  }

  /// `Or type the service name...`
  String get orTypeServiceName {
    return Intl.message(
      'Or type the service name...',
      name: 'orTypeServiceName',
      desc: '',
      args: [],
    );
  }

  /// `Or type the operation name...`
  String get orTypeOperationName {
    return Intl.message(
      'Or type the operation name...',
      name: 'orTypeOperationName',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Dentistry`
  String get dentistry {
    return Intl.message('Dentistry', name: 'dentistry', desc: '', args: []);
  }

  /// `Cardiology`
  String get cardiology {
    return Intl.message('Cardiology', name: 'cardiology', desc: '', args: []);
  }

  /// `Dermatology`
  String get dermatology {
    return Intl.message('Dermatology', name: 'dermatology', desc: '', args: []);
  }

  /// `Pediatrics`
  String get pediatrics {
    return Intl.message('Pediatrics', name: 'pediatrics', desc: '', args: []);
  }

  /// `Orthopedics`
  String get orthopedics {
    return Intl.message('Orthopedics', name: 'orthopedics', desc: '', args: []);
  }

  /// `Heart Surgery`
  String get heartSurgery {
    return Intl.message(
      'Heart Surgery',
      name: 'heartSurgery',
      desc: '',
      args: [],
    );
  }

  /// `Eye Surgery`
  String get eyeSurgery {
    return Intl.message('Eye Surgery', name: 'eyeSurgery', desc: '', args: []);
  }

  /// `Plastic Surgery`
  String get plasticSurgery {
    return Intl.message(
      'Plastic Surgery',
      name: 'plasticSurgery',
      desc: '',
      args: [],
    );
  }

  /// `General Surgery`
  String get generalSurgery {
    return Intl.message(
      'General Surgery',
      name: 'generalSurgery',
      desc: '',
      args: [],
    );
  }

  /// `Bypass Surgery`
  String get bypassSurgery {
    return Intl.message(
      'Bypass Surgery',
      name: 'bypassSurgery',
      desc: '',
      args: [],
    );
  }

  /// `Valve Replacement`
  String get valveReplacement {
    return Intl.message(
      'Valve Replacement',
      name: 'valveReplacement',
      desc: '',
      args: [],
    );
  }

  /// `Cataract`
  String get cataract {
    return Intl.message('Cataract', name: 'cataract', desc: '', args: []);
  }

  /// `Lasik`
  String get lasik {
    return Intl.message('Lasik', name: 'lasik', desc: '', args: []);
  }

  /// `Rhinoplasty`
  String get rhinoplasty {
    return Intl.message('Rhinoplasty', name: 'rhinoplasty', desc: '', args: []);
  }

  /// `Liposuction`
  String get liposuction {
    return Intl.message('Liposuction', name: 'liposuction', desc: '', args: []);
  }

  /// `Appendectomy`
  String get appendectomy {
    return Intl.message(
      'Appendectomy',
      name: 'appendectomy',
      desc: '',
      args: [],
    );
  }

  /// `Gallbladder Removal`
  String get gallbladderRemoval {
    return Intl.message(
      'Gallbladder Removal',
      name: 'gallbladderRemoval',
      desc: '',
      args: [],
    );
  }

  /// `Assiut`
  String get assiut {
    return Intl.message('Assiut', name: 'assiut', desc: '', args: []);
  }

  /// `Abnoub`
  String get abnoub {
    return Intl.message('Abnoub', name: 'abnoub', desc: '', args: []);
  }

  /// `Manfalut`
  String get manfalut {
    return Intl.message('Manfalut', name: 'manfalut', desc: '', args: []);
  }

  /// `Dairut`
  String get dairut {
    return Intl.message('Dairut', name: 'dairut', desc: '', args: []);
  }

  /// `El-Badari`
  String get elBadari {
    return Intl.message('El-Badari', name: 'elBadari', desc: '', args: []);
  }

  /// `El-Qusiya`
  String get elQusiya {
    return Intl.message('El-Qusiya', name: 'elQusiya', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
