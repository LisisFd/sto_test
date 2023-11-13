import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppYearPicker extends StatefulWidget {
  const AppYearPicker({super.key});

  @override
  State<AppYearPicker> createState() => _AppYearPickerState();
}

class _AppYearPickerState extends State<AppYearPicker> {
  int _year = 0;
  final List<int> _years =
      List.generate(71, (index) => DateTime.now().year - 70 + index);

  void _updateDate(int newYear) {
    setState(() {
      _year = _years[newYear];
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    List<Widget> years = _years
        .map(
          (y) => Text(
            y.toString(),
            style: textTheme.titleLarge,
          ),
        )
        .toList();
    return CupertinoPicker(
      itemExtent: 71,
      onSelectedItemChanged: _updateDate,
      children: years,
    );
    ;
  }
}
