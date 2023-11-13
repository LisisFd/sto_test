import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppYearPicker extends StatelessWidget {
  final void Function(int year)? onChanged;
  AppYearPicker({super.key, this.onChanged});

  final List<int> _years =
      List.generate(71, (index) => DateTime.now().year - 70 + index);

  void _updateDate(int newYear) {
    onChanged?.call(_years[newYear]);
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
  }
}
