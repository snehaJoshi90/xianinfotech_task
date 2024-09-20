import 'package:flutter/material.dart';



class DateWidgets extends StatefulWidget {
  const DateWidgets({super.key});

  @override
  State<DateWidgets> createState() => _DateWidgetsState();
}

class _DateWidgetsState extends State<DateWidgets> {
  DateTime selectedDate = DateTime.now(); // Default date is the current date

  // Function to show the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020), // You can set the range of dates
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          'Date',
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
        ),
       const SizedBox(height: 15,),
        GestureDetector(
          onTap: () => _selectDate(context),
          child: Row(
            children: [
              Text('${selectedDate.day}/${selectedDate.month}/${selectedDate.year}', style: TextStyle(fontWeight: FontWeight.bold),),
            const  SizedBox(width: 10,),
              Icon(Icons.expand_more), // Calendar icon
            ],
          ),
        ),
      ],
    );
  }
}


class InvoiceDesign extends StatefulWidget {
  @override
  _InvoiceDesignState createState() => _InvoiceDesignState();
}

class _InvoiceDesignState extends State<InvoiceDesign> {
  DateTime selectedDate = DateTime.now(); // Default date is the current date

  // Function to show the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020), // You can set the range of dates
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Invoice No. and Date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invoice No.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text('23-24-01'),
                        Icon(Icons.arrow_drop_down), // Dropdown indicator
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () => _selectDate(context),
                      child: Row(
                        children: [
                          Text('${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
                          Icon(Icons.calendar_today), // Calendar icon
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),

            // Firm Name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Firm Name:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text('xianinfotech LLP'),
                    Icon(Icons.arrow_drop_down), // Dropdown indicator
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

