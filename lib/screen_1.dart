import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade200,
        buttonBackgroundColor: Color(0xFF3E83FF),
        height:height*0.07,
        items: const <Widget>[
          Icon(Icons.home, size: 30,color: Color(0xFFB0BED4),),
          Icon(Icons.call, size: 30,color: Colors.white,),
          Icon(Icons.person, size: 30,color: Color(0xFFB0BED4),),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: height * 0.32,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: const [Color(0xFF276FD6), Color(0xFF0F4592)]),
                  ),
                ),
                Container(
                  height: height * 0.68,
                  color: Color(0xFFE8F1FA),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: height*0.08,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: Color(0xFFF1F1F1),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        print("Back button Pressed");
                      },
                    ),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    Text(
                      "Trip Sheet",
                      style: TextStyle(color: Color(0xFFF1F1F1), fontSize: 18),
                    ),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xFFF1F1F1),
                      child: Container(
                        height: 47,
                        width: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("images/1.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height*0.08,
                ),
                Container(
                  height: height*0.83,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF36DCA4),
                                borderRadius: BorderRadius.circular(20)),
                            height: height * 0.04,
                            width: width * 0.3,
                            child: Center(
                              child: Text(
                                "Ongoing Trip",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFF1F1F1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SizedBox(
                        height: height * 0.1,
                        width: width,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFE8F1FA),
                                  shape: BoxShape.circle),
                              height: height * 0.16,
                              width: width * 0.16,
                              child: Center(
                                child: Icon(
                                  Icons.engineering,
                                  color: Color(0xFF0B3F87),
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "Maintenance",
                              style: TextStyle(
                                  color: Color(0xFF0B3F87), fontSize: 14),
                            ),
                            SizedBox(
                              width: width * 0.2,
                            ),
                            IconButton(
                              onPressed: () {
                                print("Maintenance Forward Button pressed");
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF5B9AF3),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFFD4D4D5),
                        endIndent: 15,
                        thickness: 1.5,
                        height: 5,
                        indent: 15,
                      ),
                      SizedBox(
                        height: height * 0.1,
                        width: width,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFE8F1FA),
                                  shape: BoxShape.circle),
                              height: height * 0.16,
                              width: width * 0.16,
                              child: Center(
                                child: Icon(
                                  Icons.local_gas_station_outlined,
                                  color: Color(0xFF0B3F87),
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "Fuel Expense",
                              style: TextStyle(
                                  color: Color(0xFF0B3F87), fontSize: 14),
                            ),
                            SizedBox(
                              width: width * 0.2,
                            ),
                            IconButton(
                              onPressed: () {
                                print("Maintenance Forward Button pressed");
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF5B9AF3),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFFD4D4D5),
                        endIndent: 15,
                        thickness: 1.5,
                        height: 5,
                        indent: 15,
                      ),
                      SizedBox(
                        height: height * 0.1,
                        width: width,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFE8F1FA),
                                  shape: BoxShape.circle),
                              height: height * 0.16,
                              width: width * 0.16,
                              child: Center(
                                child: Icon(
                                  Icons.other_houses_outlined,
                                  color: Color(0xFF0B3F87),
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "Other Expense",
                              style: TextStyle(
                                  color: Color(0xFF0B3F87), fontSize: 14),
                            ),
                            SizedBox(
                              width: width * 0.19,
                            ),
                            IconButton(
                              onPressed: () {
                                print("Maintenance Forward Button pressed");
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF5B9AF3),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFFD4D4D5),
                        endIndent: 15,
                        thickness: 1.5,
                        height: 5,
                        indent: 15,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Total Miles",
                            style:
                            TextStyle(color: Color(0xFF404D66), fontSize: 14),
                          ),
                          SizedBox(
                            width: width * 0.2,
                          ),
                          Text(
                            "2554 mi",
                            style:
                            TextStyle(color: Color(0xFF404D66), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Divider(
                        color: Color(0xFFD4D4D5),
                        endIndent: 15,
                        thickness: 1.5,
                        height: 5,
                        indent: 15,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Text(
                                "Start Date",
                                style: TextStyle(
                                    color: Color(0xFF404D66), fontSize: 14),
                              ),
                              SizedBox(
                                width: width * 0.256,
                              ),
                              Text(
                                "End Date",
                                style: TextStyle(
                                    color: Color(0xFF404D66), fontSize: 14),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.052,
                              ),
                              Text(
                                "Fri 26th June",
                                style: TextStyle(
                                    color: Color(0xFF404D66),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: width * 0.2,
                              ),
                              Text(
                                "Mon 29th June",
                                style: TextStyle(
                                    color: Color(0xFF404D66),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Divider(
                        color: Color(0xFFD4D4D5),
                        endIndent: 15,
                        thickness: 1.5,
                        height: 5,
                        indent: 15,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Out Of Pocket",
                            style:
                            TextStyle(color: Color(0xFF404D66), fontSize: 14),
                          ),
                          SizedBox(
                            width: width * 0.12,
                          ),
                          Text(
                            "\$500.00",
                            style: TextStyle(color: Colors.red, fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Divider(
                        color: Color(0xFFD4D4D5),
                        endIndent: 15,
                        thickness: 1.5,
                        height: 5,
                        indent: 15,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Lumper Charges",
                            style:
                            TextStyle(color: Color(0xFF404D66), fontSize: 14),
                          ),
                          SizedBox(
                            width: width * 0.07,
                          ),
                          Text(
                            "\$500.00",
                            style:
                            TextStyle(color: Color(0xFF404D66), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Divider(
                        color: Color(0xFFD4D4D5),
                        endIndent: 15,
                        thickness: 1.5,
                        height: 5,
                        indent: 15,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Repairing",
                            style:
                            TextStyle(color: Color(0xFF404D66), fontSize: 14),
                          ),
                          SizedBox(
                            width: width * 0.2,
                          ),
                          Text(
                            "\$500.00",
                            style:
                            TextStyle(color: Color(0xFF404D66), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Divider(
                        color: Color(0xFFD4D4D5),
                        endIndent: 15,
                        thickness: 1.5,
                        height: 5,
                        indent: 15,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Total Tax",
                            style:
                            TextStyle(color: Color(0xFF404D66), fontSize: 14),
                          ),
                          SizedBox(
                            width: width * 0.2,
                          ),
                          Text(
                            "\$500.00",
                            style:
                            TextStyle(color: Color(0xFF404D66), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        height: height * 0.06,
                        width: width * 0.65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFF1F1F1),
                          // gradient: LinearGradient(
                          //     begin: Alignment.centerLeft,
                          //     end: Alignment.centerRight,
                          //     colors: const [
                          //       Color(0xFFD4D4D5),
                          //       Color(0xFF989898)
                          //     ]),
                        ),
                        child: TextButton(
                          onPressed: () {
                            print("Trip Button pressed");
                          },
                          child: Center(
                            child: Text("Your trip has been end"),
                          ),
                          style: TextButton.styleFrom(primary: Color(0xFF989898)),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
