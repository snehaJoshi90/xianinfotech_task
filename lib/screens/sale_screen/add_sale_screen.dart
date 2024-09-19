import 'package:flutter/material.dart';
import 'package:xianinfotech_task/screens/sale_screen/widgets/cupertino_sliding_widget.dart';
import 'package:xianinfotech_task/screens/sale_screen/widgets/firm_name_dropdown.dart';
class AddSaleScreen extends StatelessWidget {
  const AddSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Sale'),
        actions: [
          CupertinoSlidingWidget(),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 30,
            width: 30,
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.green),
            child: Icon(
              Icons.settings_outlined,
              size: 24.0, // You can adjust the size of the icon here
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            Divider(),
            Row(),
            Row(
              children: [
                Text("Firm Name:"),
                Text("xianinfotech LLP",style: TextStyle(fontWeight: FontWeight.w700),),
              FirmNameDropdown(),
              ],

            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Customer *',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            // Billing Name (Optional)
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Billing Name (Optional)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            // Phone Number
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            // Add Items Button
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Add items action
                  },
                  icon: Icon(Icons.add),
                  label: Text('Add Items (Optional)'),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Total Amount Section
            Text(
              "Total Amount",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Spacer(),
            // Save Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Save and New action
                  },
                  child: Text('Save & New'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Save action
                  },
                  child: Text('Save'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
