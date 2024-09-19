import 'package:flutter/material.dart';
import 'package:xianinfotech_task/screens/home_screen/widgets/quick_links_widgets.dart';
import 'package:xianinfotech_task/screens/sale_screen/add_sale_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isTdSelected = true;
  bool isPdSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Row(
          children: [
            Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.blue),
                ),
                child: IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.blue,
                    size: 25,
                  ),
                )),
            Spacer(),
            Text('xianinfothech LLP'),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
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
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isTdSelected = true;
                        isPdSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isTdSelected ? Colors.red.shade100 : Colors.white,
                      foregroundColor: isTdSelected ? Colors.red : Colors.grey,
                      side: BorderSide(
                          width: 2.0,
                          color: isTdSelected ? Colors.red : Colors.grey),
                    ),
                    child: Text(
                      "Transaction Details",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, right: 10, left: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPdSelected = true;
                        isTdSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isPdSelected ? Colors.red.shade100 : Colors.white,
                      foregroundColor: isPdSelected ? Colors.red : Colors.grey,
                      side: BorderSide(
                        width: 2.0,
                        color: isPdSelected ? Colors.red : Colors.grey,
                      ),
                    ),
                    child: Text("Party Details"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                QuickLinksWidgets(),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search for a transaction",
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.blue,
                    ),
                    suffixIcon: Icon(Icons.filter_alt_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                  ),
                ),

              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddSaleScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              // side: BorderSide(
              //   width: 2.0,
              //   color: isPdSelected ? Colors.red : Colors.grey,
              // ),
            ),
            child: Text(" \u{20B9} Add New Sale"),
          ),
        ],
      ),
    );
  }
}
