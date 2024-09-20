import 'package:flutter/material.dart';

enum FrimLabel {
  smile(
    '23-24-01',
  ),
  cloud(
    '23-24-01',
  ),
  brush(
    '23-24-01',
  ),
  heart(
    '23-24-01',
  );

  const FrimLabel(this.label);

  final String label;
  //final IconData icon;
}

class InvoiceNoWidget extends StatefulWidget {
  const InvoiceNoWidget({super.key});

  @override
  State<InvoiceNoWidget> createState() => _InvoiceNoWidgetState();
}

class _InvoiceNoWidgetState extends State<InvoiceNoWidget> {
  final TextEditingController iconController = TextEditingController();

  FrimLabel? selectedIcon;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<FrimLabel>(
      initialSelection: FrimLabel.brush,

      controller: iconController,
      trailingIcon:  Icon(Icons.expand_more),
      //menuHeight: 150, // Adjust menu height if necessary
      width: 125, // Adjust menu width if necessary
     // padding: EdgeInsets.zero,
      enableFilter: true,
      requestFocusOnTap: true,
      textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
      //leadingIcon: const Icon(Icons.search),
      //  label: const Text('Icon'),
      inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          //contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 0.0),
          fillColor: Colors.transparent,
          border: InputBorder.none,
          // Removes the border
          enabledBorder: InputBorder.none,
          // Removes the enabled border
          focusedBorder: InputBorder.none,
          // Removes the focused border
          errorBorder: InputBorder.none,
          // Removes the error border
          disabledBorder: InputBorder.none,
          outlineBorder: BorderSide.none),
      onSelected: (FrimLabel? icon) {
        setState(() {
          selectedIcon = icon;
        });
      },
      dropdownMenuEntries: FrimLabel.values.map<DropdownMenuEntry<FrimLabel>>(
        (FrimLabel icon) {
          return DropdownMenuEntry<FrimLabel>(
            value: icon,
            label: icon.label,
            //leadingIcon: Icon(icon.icon),
          );
        },
      ).toList(),
    );
  }
}
