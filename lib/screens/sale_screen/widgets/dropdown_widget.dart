import 'package:flutter/material.dart';

//void main() => runApp(MyApp());



class DropdownFormExample extends StatefulWidget {
  @override
  _DropdownFormExampleState createState() => _DropdownFormExampleState();
}

class _DropdownFormExampleState extends State<DropdownFormExample> {
  String? _selectedValue;

  final List<String> _dropdownItems = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'Select an option:',
          //   style: TextStyle(fontSize: 16),
          // ),
          // SizedBox(height: 10),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: InputBorder.none, // Removes the border
              enabledBorder: InputBorder.none, // Removes the enabled border
              focusedBorder: InputBorder.none, // Removes the focused border
              errorBorder: InputBorder.none, // Removes the error border
              disabledBorder: InputBorder.none,


              // Removes the disabled border
            //  border: OutlineInputBorder(),
             // labelText: 'Select an Option',
            ),
            value: _selectedValue,
            icon: Icon(Icons.expand_more_outlined),
            items: _dropdownItems.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                _selectedValue = newValue;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'Please select an option';
              }
              return null;
            },
          ),
          SizedBox(height: 20),

        ],
      ),
    );
  }
}
