part of 'app_localization.dart';

extension LocaleUtils on String {
  String translation(BuildContext context) {
    return AppLocalization.of(context)?.getText(this) ?? "???";
  }
}
