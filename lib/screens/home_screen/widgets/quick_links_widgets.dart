import 'package:flutter/material.dart';

class QuickLinksWidgets extends StatelessWidget {
  const QuickLinksWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _quickLinkButton(String text, IconData icon) {
      return Column(
        children: [
          Icon(icon, size: 30),
          SizedBox(height: 5),
          Text(text, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
        ],
      );
    }

    return Card(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Quick Links',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _quickLinkButton("Add Txn", Icons.add),
                _quickLinkButton("Sale Report", Icons.report),
                _quickLinkButton("Txn Settings", Icons.settings),
                _quickLinkButton("Show All", Icons.arrow_circle_right_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
