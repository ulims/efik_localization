import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class _EfikCupertinoLocalizationsDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  const _EfikCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ef';

  @override
  Future<CupertinoLocalizations> load(Locale locale) => EfikCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(_EfikCupertinoLocalizationsDelegate old) => false;

  @override
  String toString() => 'EfikCupertinoLocalizations.delegate(ef)';
}

/// US English strings for the cupertino widgets.
class EfikCupertinoLocalizations implements CupertinoLocalizations {
  /// Constructs an object that defines the cupertino widgets' localized strings
  /// for US English (only).
  ///
  /// [LocalizationsDelegate] implementations typically call the static [load]
  /// function, rather than constructing this class directly.
  const EfikCupertinoLocalizations();

  static const List<String> _shortWeekdays = <String>[
    'Mọn',
    'Tue',
    'Wen',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  static const List<String> _shortMonths = <String>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Ọct',
    'Nov',
    'Dec',
  ];

  static const List<String> _months = <String>[
  
  ];


  @override
  String datePickerYear(int yearIndex) => yearIndex.toString();

  @override
  String datePickerMonth(int monthIndex) => _months[monthIndex - 1];

  @override
  String datePickerDayOfMonth(int dayIndex, [monthIndex]) => dayIndex.toString();

  @override
  String datePickerHour(int hour) => hour.toString();

  @override
  String datePickerHourSemanticsLabel(int hour) => "$hour Iduat";

  @override
  String datePickerMinute(int minute) => minute.toString().padLeft(2, '0');

  @override
  String datePickerMinuteSemanticsLabel(int minute) {
    if (minute == 1) return '1 ọkpọ';
    return '$minute ọkpọ';
  }

  @override
  String datePickerMediumDate(DateTime date) {
    return '${_shortWeekdays[date.weekday - DateTime.monday]} '
        '${_shortMonths[date.month - DateTime.january]} '
        '${date.day.toString().padRight(2)}';
  }

  @override
  DatePickerDateOrder get datePickerDateOrder => DatePickerDateOrder.mdy;

  @override
  DatePickerDateTimeOrder get datePickerDateTimeOrder => DatePickerDateTimeOrder.date_time_dayPeriod;

  @override
  String timerPickerHour(int hour) => hour.toString();

  @override
  String timerPickerMinute(int minute) => minute.toString();

  @override
  String timerPickerSecond(int second) => second.toString();

  @override
  String timerPickerHourLabel(int hour) => hour == 1 ? 'ọkpọ' : 'ọkpọ';

  @override
  String timerPickerMinuteLabel(int minute) => 'min';

  @override
  String timerPickerSecondLabel(int second) => 'sec';


  @override
  String get anteMeridiemAbbreviation => 'AM';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get alertDialogLabel => 'Ibiomo';


  @override
  String get cutButtonLabel => 'Kata';

  @override
  String get copyButtonLabel => 'Nduọk';

  @override
  String get pasteButtonLabel => 'Ede';

  @override
  String get selectAllButtonLabel => 'Ndi Mbiet Enye';

  /// Creates an object that provides US English resource values for the
  /// cupertino library widgets.
  ///
  /// The [locale] parameter is ignored.
  ///
  /// This method is typically used to create a [LocalizationsDelegate].
  static Future<CupertinoLocalizations> load(Locale locale) {
    return SynchronousFuture<CupertinoLocalizations>(const EfikCupertinoLocalizations());
  }

  /// A [LocalizationsDelegate] that uses [DefaultCupertinoLocalizations.load]
  /// to create an instance of this class.
  static const LocalizationsDelegate<CupertinoLocalizations> delegate = _EfikCupertinoLocalizationsDelegate();

  @override
  // TODO: implement modalBarrierDismissLabel
  String get modalBarrierDismissLabel => 'Mbuan';

  @override
  // TODO: implement noSpellCheckReplacementsLabel
  String get noSpellCheckReplacementsLabel => "";

  @override
  // TODO: implement searchTextFieldPlaceholderLabel
  String get searchTextFieldPlaceholderLabel => "Nnyam";

  @override
  String tabSemanticsLabel({required int tabIndex, required int tabCount}) {
    // TODO: implement tabSemanticsLabel
    return "";
  }

  @override
  // TODO: implement timerPickerHourLabels
  List<String> get timerPickerHourLabels => [];

  @override
  // TODO: implement timerPickerMinuteLabels
  List<String> get timerPickerMinuteLabels => [];

  @override
  // TODO: implement timerPickerSecondLabels
  List<String> get timerPickerSecondLabels => [];

  @override
  // TODO: implement todayLabel
  String get todayLabel => "";

  @override
  // TODO: implement clearButtonLabel
  String get clearButtonLabel => 'kpot';

  @override
  String datePickerStandaloneMonth(int monthIndex) {
    // TODO: implement datePickerStandaloneMonth
    return "";
  }

  @override
  String get lookUpButtonLabel => 'Kpe Ekpe';

  @override
  String get menuDismissLabel => 'Kûk mîmî';

  @override
  String get searchWebButtonLabel => 'Ndi Kọmputa';

  @override
  String get shareButtonLabel => 'kpe';
}
