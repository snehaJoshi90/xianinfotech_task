import 'package:flutter/material.dart';
import 'package:xianinfotech_task/common/my_separator.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  bool isSaveSelected = true;
  bool isSaveNewSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Add Item to Sale'),
        actions: [
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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Item Name',
                          hintText: 'e.g. Chocolate Cake',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Quantity',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                labelText: 'Unit',
                                border: OutlineInputBorder(),
                              ),
                              items: <String>['Unit1', 'Unit2', 'Unit3']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                // Handle unit selection
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Rate (Price/Unit)',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                labelText: 'Tax',
                                border: OutlineInputBorder(),
                              ),
                              items: <String>['Without Tax', 'With Tax']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                // Handle tax selection
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Totals & Taxes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Divider(),
                      SizedBox(height: 16.0),
                      // Subtotal
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal (Rate x Qty)',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '690.00',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),

                      SizedBox(height: 16.0),
                      // Discount
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(
                              'Discount',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                                hintText: '0',
                                //labelText: '0',
                                labelStyle: TextStyle(
                                    fontSize: 16,
                                    color: Colors.orangeAccent.shade200),
                                // suffixText: '%',
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(25.0),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.orangeAccent.shade200,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent.shade100,
                              borderRadius: BorderRadius.only(
                                //topLeft: Radius.elliptical(5, 5),
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              // borderRadius: BorderRadius.circular(5),
                              // color: Colors.white,
                              border: Border.all(
                                  color: Colors.orangeAccent.shade200,
                                  width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '%',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.only(
                                //topLeft: Radius.elliptical(5, 5),
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              // borderRadius: BorderRadius.circular(5),
                              // color: Colors.white,
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '  ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                                // labelText: '',
                                hintText: '0.00',
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    //color: Colors.orangeAccent.shade200),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      // Tax %
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Tax % ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            flex: 2,
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                                //labelText: 'Tax %',
                                border: OutlineInputBorder(),
                              ),
                              items: <String>['None', '5%', '10%', '15%']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                // Handle tax percentage selection
                              },
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                                labelText: '',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      // Additional CESS

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Additional CESS',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '0.00',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: const MySeparator(color: Colors.grey)),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      // Total Amount
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Amount:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          Text(
                            '690.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: const MySeparator(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Positioned(
            bottom: 0,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSaveNewSelected = true;
                        isSaveSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      // fixedSize:MediaQuery.of(context).size.width(49),
                      backgroundColor:
                          isSaveNewSelected ? Colors.red : Colors.white,
                      foregroundColor:
                          isSaveNewSelected ? Colors.white : Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        //borderRadius: BorderRadius.zero, //Rectangular border
                      ),
                    ),
                    child: Text(
                      'Save & New',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSaveSelected = true;
                        isSaveNewSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      // fixedSize:MediaQuery.of(context).size.width(49),
                      backgroundColor:
                          isSaveSelected ? Colors.red : Colors.white,
                      foregroundColor:
                          isSaveSelected ? Colors.white : Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        //borderRadius: BorderRadius.zero, //Rectangular border
                      ),
                    ),
                    child: Text(
                      'Save',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
