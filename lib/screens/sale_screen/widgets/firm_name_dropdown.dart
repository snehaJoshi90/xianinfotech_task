import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

enum FrimLabel {
  smile(
    'xianinfotech LLP',
  ),
  cloud(
    'xianinfotech LLP',
  ),
  brush(
    'xianinfotech LLP',
  ),
  heart(
    'xianinfotech LLP',
  );

  const FrimLabel(this.label);

  final String label;
  //final IconData icon;
}

class FirmNameDropdown extends StatefulWidget {
  const FirmNameDropdown({super.key});

  @override
  State<FirmNameDropdown> createState() => _FirmNameDropdownState();
}

class _FirmNameDropdownState extends State<FirmNameDropdown> {
  final TextEditingController iconController = TextEditingController();

  FrimLabel? selectedIcon;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<FrimLabel>(
      controller: iconController,

      trailingIcon: Icon(Icons.expand_more),
      width: MediaQuery.of(context).size.width*0.75,
      enableFilter: true,

      requestFocusOnTap: true,
      textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
      //leadingIcon: const Icon(Icons.search),
      //  label: const Text('Icon'),
      inputDecorationTheme: const InputDecorationTheme(
        isDense: true,

        filled: true,
        //contentPadding: EdgeInsets.symmetric(vertical: 5.0),
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        outlineBorder: BorderSide.none,
        border: InputBorder.none,
        // Removes the border
        enabledBorder: InputBorder.none,
        // Removes the enabled border
        focusedBorder: InputBorder.none,
        // Removes the focused border
        errorBorder: InputBorder.none,
        // Removes the error border
        disabledBorder: InputBorder.none,
      ),
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
