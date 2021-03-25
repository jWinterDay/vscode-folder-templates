import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

import '../localization/russian_cupertino_localizations.dart';

class FallbackCupertinoLocalisationsDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => <String>[
        'ru',
        'en',
      ].contains(locale.languageCode);

  @override
  Future<CupertinoLocalizations> load(Locale locale) => locale.languageCode == 'ru'
      ? SynchronousFuture<RussianCupertinoLocalizations>(const RussianCupertinoLocalizations())
      : SynchronousFuture<DefaultCupertinoLocalizations>(const DefaultCupertinoLocalizations());

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}
