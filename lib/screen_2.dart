import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  TextEditingController dateInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade200,
        buttonBackgroundColor: Color(0xFF3E83FF),
        height: height * 0.07,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Color(0xFFB0BED4),
          ),
          Icon(
            Icons.call,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Color(0xFFB0BED4),
          ),
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
                     width: width * 0.18,
                   ),
                   Text(
                     "Maintenance",
                     style: TextStyle(color: Color(0xFFF1F1F1), fontSize: 18),
                   ),
                   SizedBox(
                     width: width * 0.18,
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
               Column(
                 children: [
                   Container(
                     height: height * 0.15,
                     width: width * 0.85,
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10)),
                     child: Row(
                       children: [
                         SizedBox(
                           width: width * 0.05,
                         ),
                         Column(
                           children: [
                             IconButton(
                               onPressed: () {},
                               icon: Icon(
                                 Icons.local_shipping_outlined,
                                 size: 75,
                                 color: Color(0xFF0F4592),
                               ),
                             ),
                             SizedBox(
                               height: height * 0.04,
                             ),
                             Padding(
                               padding: EdgeInsets.only(left: 20),
                               child: Text(
                                 "Truck",
                                 textAlign: TextAlign.center,
                                 style: TextStyle(color: Color(0xFF404D66)),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(
                           width: width * 0.35,
                         ),
                         Column(
                           children: [
                             IconButton(
                               onPressed: () {},
                               icon: Icon(
                                 Icons.airport_shuttle_outlined,
                                 size: 75,
                                 color: Color(0xFFD4D4D5),
                               ),
                             ),
                             SizedBox(
                               height: height * 0.04,
                             ),
                             Padding(
                               padding: EdgeInsets.only(left: 20),
                               child: Text(
                                 "Trailer",
                                 textAlign: TextAlign.center,
                                 style: TextStyle(color: Color(0xFFD4D4D5)),
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: height * 0.02,
                   ),
                   Container(
                     padding: EdgeInsets.all(15),
                     height: height*0.83,
                     width: width * 0.85,
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10)),
                     child: Column(
                       children: [
                         Theme(
                           data: ThemeData(
                               primaryColor: Color(0xFF0F4592)
                           ),
                           child: TextField(
                             keyboardType: TextInputType.text,
                             onEditingComplete: ()=> FocusScope.of(context).nextFocus(),
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               labelText: "Select Trip Type",
                               labelStyle:TextStyle(
                                 fontSize: 14,
                               ),
                               hintText: "Pre Trip",
                               hintStyle: TextStyle(
                                 color: Color(0xFFAAAAAA),
                                 fontSize: 10,
                               ),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: height * 0.02,
                         ),
                         Theme(
                           data: ThemeData(
                               primaryColor: Color(0xFF0F4592)
                           ),
                           child: TextField(
                             keyboardType: TextInputType.text,
                             onEditingComplete: ()=> FocusScope.of(context).nextFocus(),
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               labelText: "Carrier",
                               labelStyle:TextStyle(
                                 fontSize: 14,
                               ),
                               hintText: "Pre Trip",
                               hintStyle: TextStyle(
                                 color: Color(0xFFAAAAAA),
                                 fontSize: 10,
                               ),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: height * 0.02,
                         ),
                         Theme(
                           data: ThemeData(
                               primaryColor: Color(0xFF0F4592)
                           ),
                           child: TextField(
                             keyboardType: TextInputType.text,
                             onEditingComplete: ()=> FocusScope.of(context).nextFocus(),
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               labelText: "Location",
                               labelStyle:TextStyle(
                                 fontSize: 14,
                               ),
                               hintText: "106 E Washington Street Melbourne, NC 27302",
                               hintStyle: TextStyle(
                                 color: Color(0xFFAAAAAA),
                                 fontSize: 10,
                               ),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: height * 0.02,
                         ),
                         Theme(
                           data: ThemeData(
                               primaryColor: Color(0xFF0F4592)
                           ),
                           child: TextField(
                             keyboardType: TextInputType.text,
                             onEditingComplete: ()=> FocusScope.of(context).nextFocus(),
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               labelText: "Driver Name",
                               labelStyle:TextStyle(
                                 fontSize: 14,
                               ),
                               hintText: "Alex Pardo",
                               hintStyle: TextStyle(
                                 color: Color(0xFFAAAAAA),
                                 fontSize: 10,
                               ),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: height * 0.02,
                         ),
                         Theme(
                           data: ThemeData(
                               primaryColor: Color(0xFF0F4592)
                           ),
                           child: TextField(
                             controller: dateInput,
                             keyboardType: TextInputType.datetime,
                             onEditingComplete: ()=> FocusScope.of(context).nextFocus(),
                             readOnly: true,
                             decoration: InputDecoration(
                               suffixIcon: Icon(Icons.calendar_today,color: Color(0xFFAAAAAA),),
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               labelText: "Date",
                               labelStyle:TextStyle(
                                 fontSize: 14,
                               ),
                               hintText: "2020-06-03",
                               hintStyle: TextStyle(
                                 color: Color(0xFFAAAAAA),
                                 fontSize: 10,
                               ),
                             ),
                             onTap: () async {
                               DateTime? pickedDate = await showDatePicker(
                                   context: context, initialDate: DateTime.now(),
                                   firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                   lastDate: DateTime(2101)
                               );

                               if(pickedDate != null ){
                                 print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                                 String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                 print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                 //you can implement different kind of Date Format here according to your requirement

                                 setState(() {
                                   dateInput.text = formattedDate; //set output date to TextField value.
                                 });
                               }else{
                                 print("Date is not selected");
                               }
                             },
                           ),
                         ),
                         SizedBox(
                           height: height * 0.02,
                         ),
                         Theme(
                           data: ThemeData(
                               primaryColor: Color(0xFF0F4592)
                           ),
                           child: TextField(
                             keyboardType: TextInputType.text,
                             onEditingComplete: ()=> FocusScope.of(context).nextFocus(),
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               labelText: "Odometer Reading",
                               labelStyle:TextStyle(
                                 fontSize: 14,
                               ),
                               hintText: "Good",
                               hintStyle: TextStyle(
                                 color: Color(0xFFAAAAAA),
                                 fontSize: 10,
                               ),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: height * 0.02,
                         ),
                         Theme(
                           data: ThemeData(
                               primaryColor: Color(0xFF0F4592)
                           ),
                           child: TextField(
                             keyboardType: TextInputType.text,
                             onEditingComplete: ()=> FocusScope.of(context).nextFocus(),
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               labelText: "Truck Number",
                               labelStyle:TextStyle(
                                 fontSize: 14,
                               ),
                               hintText: "CA 4506",
                               hintStyle: TextStyle(
                                 color: Color(0xFFAAAAAA),
                                 fontSize: 10,
                               ),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: height*0.02,
                         ),
                         Container(
                           height: height * 0.06,
                           width: width * 0.65,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8),
                             gradient: LinearGradient(
                                 begin: Alignment.centerLeft,
                                 end: Alignment.centerRight,
                                 colors: const [Color(0xFF276FD6), Color(0xFF0F4592)]),
                           ),
                           child: TextButton(
                             onPressed: () {
                               print("Save Button pressed");
                             },
                             child: Center(
                               child: Text("Save and Next"),
                             ),
                             style: TextButton.styleFrom(primary: Color(0xFFF1F1F1)),
                           ),
                         ),
                         SizedBox(
                           height: height*0.02,
                         )
                       ],
                     ),
                   ),
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


