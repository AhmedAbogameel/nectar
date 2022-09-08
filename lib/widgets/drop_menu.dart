import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/widgets/my_text.dart';

class DropMenu extends StatefulWidget {
  const DropMenu({Key? key, required this.labelText, required this.items, required this.onChanged}) : super(key: key);

  final String labelText;
  final List items;
  final Function(dynamic) onChanged;

  @override
  State<DropMenu> createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {

  var selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyText(
            data: widget.labelText,
            fontSize: 14,
            color: kDarkGrayColor,
            fontWeight: FontWeight.bold,
          ),
          DropdownButton(
            value: selectedValue,
            isExpanded: true,
            icon: Icon(Icons.keyboard_arrow_down_rounded, color: kDarkGrayColor),
            items: widget.items
                .map(
                  (e) => DropdownMenuItem(
                    child: MyText(
                      data: '$e',
                    ),
                    value: e,
                  ),
                )
                .toList(),
            onChanged: (v) {
              selectedValue = v;
              setState(() {});
              widget.onChanged(selectedValue);
            },
          ),
        ],
      ),
    );
  }
}
