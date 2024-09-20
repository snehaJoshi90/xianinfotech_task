import 'package:flutter/material.dart';
import 'package:xianinfotech_task/screens/add_items_screen/add_item_screen.dart';
import 'package:xianinfotech_task/screens/sale_screen/widgets/cupertino_sliding_widget.dart';
import 'package:xianinfotech_task/screens/sale_screen/widgets/firm_name_dropdown.dart';
import 'package:xianinfotech_task/screens/sale_screen/widgets/invoice_no_widget.dart';
import 'package:xianinfotech_task/screens/sale_screen/widgets/date_widgets.dart';
import 'package:xianinfotech_task/screens/sale_screen/widgets/dropdown_widget.dart';

class AddSaleScreen extends StatefulWidget {
  const AddSaleScreen({super.key});

  @override
  State<AddSaleScreen> createState() => _AddSaleScreenState();
}

class _AddSaleScreenState extends State<AddSaleScreen> {
  bool isSaveSelected = true;
  bool isSaveNewSelected = false;
  TextEditingController phoneNumController = TextEditingController();
  TextEditingController customerController = TextEditingController();
  TextEditingController billingNameController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.zero,
                color: Colors.white,
                child: Column(
                  children: [
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Invoice No.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,),
                            ),
                            InvoiceNoWidget(),
                          ],
                        ),
                        Container(
                            height: 20,
                            child: VerticalDivider(color: Colors.grey)),
                        DateWidgets(),
                      ],
                    ),
                    Divider(),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Firm Name : "),
                        //  Text("xianinfotech LLP",style: TextStyle(fontWeight: FontWeight.w700),),
                        FirmNameDropdown(),
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),

            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: customerController,
                      decoration: InputDecoration(
                        labelText: 'Customer *',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 10),
                    // Billing Name (Optional)
                    TextFormField(
                      controller: billingNameController,
                      decoration: InputDecoration(
                        labelText: 'Billing Name (Optional)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    // Phone Number
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: phoneNumController,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',

                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),

                    Container(
                      width: double.infinity,
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddItemScreen()),
                          );
                        },
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.blue,
                        ),
                        // label: Text('Add Items (Optional)'),
                        label: RichText(
                          text: TextSpan(
                            text: 'Add Items ',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: '(Optional)',
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Add Items Button

            SizedBox(height: 20),
            // Total Amount Section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Container(
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue,
                border: Border.all(color: Colors.grey.shade400),

              ),
              child: Text('Billed Items',style:TextStyle(color: Colors.white) ,),

            )

            // Save Buttons
          ],
        ),
        Positioned(
          bottom: 0,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSaveNewSelected=true;
                      isSaveSelected=false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    // fixedSize:MediaQuery.of(context).size.width(49),
                    backgroundColor:isSaveNewSelected? Colors.blue : Colors.white,
                    foregroundColor:isSaveNewSelected? Colors.white: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      //borderRadius: BorderRadius.zero, //Rectangular border
                    ),
                  ),
                  child: Text(
                    'Save & New',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSaveSelected=true;
                      isSaveNewSelected=false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    // fixedSize:MediaQuery.of(context).size.width(49),
                    backgroundColor:isSaveSelected? Colors.blue : Colors.white,
                    foregroundColor: isSaveSelected? Colors.white: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      //borderRadius: BorderRadius.zero, //Rectangular border
                    ),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.forward_outlined,
                    color: Colors.blue,
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
