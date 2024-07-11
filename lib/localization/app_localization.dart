import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'app_locale.dart';
part 'english_localization.dart';
part 'hindi_localization.dart';
part 'localisation_delegate.dart';
part 'translation.dart';

class AppLocalization {
  final Locale locale;

  AppLocalization(this.locale);

  static const kLogin = "login";

  static AppLocalization? of(BuildContext context) =>
      Localizations.of<AppLocalization>(context, AppLocalization);

  static final Map<String, Map<String, String>> _localisedValues = {
    AppLocale.kEnglish: EnglishLocalization.localization,
  };

  String getText(String tag) {
    if ((_localisedValues.containsKey(locale.languageCode)) &&
        (_localisedValues[locale.languageCode]?.containsKey(tag) ?? false)) {
      return _localisedValues[locale.languageCode]?[tag] ?? tag;
    } else {
      return EnglishLocalization.localization[tag] ?? tag;
    }
  }
}
