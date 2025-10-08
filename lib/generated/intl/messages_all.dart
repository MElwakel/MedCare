// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// ignore_for_file: implementation_imports, file_names, unnecessary_new
// ignore_for_file: unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file: argument_type_not_assignable, invalid_assignment
// ignore_for_file: prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file: comment_references

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_ar.dart' as messages_ar;
import 'messages_en.dart' as messages_en;

typedef Future<dynamic> LibraryLoader();

final Map<String, LibraryLoader> _deferredLibraries = {
  'ar': () => SynchronousFuture(null),
  'en': () => SynchronousFuture(null),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'ar':
      return messages_ar.messages;
    case 'en':
      return messages_en.messages;
    default:
      return null;
  }
}

/// Initializes messages for the provided [localeName].
Future<bool> initializeMessages(String localeName) {
  final availableLocale = Intl.verifiedLocale(
    localeName,
    (locale) => _deferredLibraries[locale] != null,
    onFailure: (_) => null,
  );

  if (availableLocale == null) {
    return SynchronousFuture(false);
  }

  final lib = _deferredLibraries[availableLocale];
  if (lib != null) lib();

  initializeInternalMessageLookup(() => CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);

  return SynchronousFuture(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (_) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  final actualLocale = Intl.verifiedLocale(
    locale,
    _messagesExistFor,
    onFailure: (_) => null,
  );

  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
