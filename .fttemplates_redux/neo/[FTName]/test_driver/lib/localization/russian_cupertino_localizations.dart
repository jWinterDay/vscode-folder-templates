import 'package:flutter/cupertino.dart';

class RussianCupertinoLocalizations extends DefaultCupertinoLocalizations {
  const RussianCupertinoLocalizations();

  static const List<String> _months = <String>[
    'Январь',
    'Февраль',
    'Март',
    'Апрель',
    'Май',
    'Июнь',
    'Июль',
    'Август',
    'Сентябрь',
    'Октябрь',
    'Ноябрь',
    'Декабрь',
  ];

  @override
  String datePickerMonth(int monthIndex) {
    return _months[monthIndex - 1];
  }

  @override
  DatePickerDateOrder get datePickerDateOrder => DatePickerDateOrder.dmy;

  @override
  String get alertDialogLabel => 'Внимание';
}
