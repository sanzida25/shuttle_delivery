import 'package:flutter/material.dart';
import 'home_screen.dart';

//import 'booking_details.dart';
import 'package:google_fonts/google_fonts.dart';


class ShuttleScreen extends StatefulWidget {
  const ShuttleScreen({super.key});

  @override
  State<ShuttleScreen> createState() => _ShuttleScreenState();
}

class _ShuttleScreenState extends State<ShuttleScreen> {
  String dropdownvalue = 'Dhanmondi';
  // List of items in our dropdown menu
  var items = [
    'Dhanmondi',
    'Wari',
    'Gulshan Avenue',
    'Uttara Airport',
    'Bashundhara',
  ];
  String dropdownvalueloc = 'Dhanmondi';

  String dropdownvalue1 = '7am';
  DateTime date= DateTime(2023,01,02);
  // List of items in our dropdown menu
  var items1 = [
    '7am', '8am', '9am',
    '10am', '12pm', '1pm',
    '2pm', '3pm', '4pm',
    '5pm', '6pm', '7pm',
    '8pm', '9pm', '10pm',
  ];
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromARGB(255, 68, 66, 72),
                  Color.fromARGB(255, 48, 45, 56),
                  Color.fromARGB(255, 36, 30, 40),
                  Color.fromARGB(255, 12, 1, 1),],
              ),
            )  ,
          ),
          Positioned(
            top: 50,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //to go to back page
                    //Navigator.pop(context);
                    IconButton(
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen(),
                        ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size:30,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10,left: 30),
                  child: Text(
                    "Welcome abroad!",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline2,
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 1,left: 30),
                  child: Text(
                    "Where do you want to go?",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline3,
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210, left:20, right:20),
            child: Container(
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: const Offset(5, 5)
                  )
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.headline3,
                          color: Colors.grey.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      // Text(
                      //  'Location 1',
                      //   style: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 25,
                      //  ),
                      // ),
                      DropdownButton(

                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),

                      // SizedBox(
                      //   height: 20,
                      // ),
                      Text(
                        'To',
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.headline3,
                          color: Colors.grey.shade800,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      // Text(
                      //   'Location 2',
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontSize: 25,
                      //   ),
                      // ),
                      SizedBox(width: 15,),
                      DropdownButton(

                        // Initial Value
                        value: dropdownvalueloc,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalueloc = newValue!;
                          });
                        },
                      ),

                    ],
                  ),
                  const Icon(
                    Icons.swap_vert_circle_rounded,
                    color: Colors.black,
                    size: 60,
                  ),
                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 460, left:20, right:20),
            child: Container(
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: const Offset(5, 5)
                  )
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('PASSENGER',
                          style: GoogleFonts.poppins(
                            //textStyle: Theme.of(context).textTheme.headlineSmall,
                            color: Colors.grey.shade800,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text('TIME',
                          style: GoogleFonts.poppins(
                            //textStyle: Theme.of(context).textTheme.headlineSmall,
                            color: Colors.grey.shade800,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            IconButton(onPressed:() => setState(() {
                              if(_itemCount > 0){
                                _itemCount--;
                              }
                            }),
                              icon: const Icon(Icons.remove,
                              ),
                            ),
                            Text(_itemCount.toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            IconButton(onPressed: () => setState(() {
                              _itemCount++;
                            }), icon: Icon(Icons.add))
                          ],

                        ),
                        // Text(
                        //   '',
                        //   style: TextStyle(
                        //   color: Colors.black,
                        //   fontSize: 25,
                        //  ),
                        // ),
                        //SizedBox(width: 0,),
                        DropdownButton(

                          // Initial Value
                          value: dropdownvalue1,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items1.map((String items1) {
                            return DropdownMenuItem(
                              value: items1,
                              child: Text(items1,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue1 = newValue!;
                            });
                          },
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('DATE',
                            style: GoogleFonts.poppins(
                              //textStyle: Theme.of(context).textTheme.headlineSmall,
                              color: Colors.grey.shade800,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                          TextButton.icon(
                            label: Text(
                              '${date.year}/${date.month}/${date.day}',
                            ),
                            onPressed: () async {
                              DateTime? newDate = await showDatePicker(context: context,
                                  initialDate: date,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100)
                              );
                              if(newDate==null) return;
                              setState(() => date = newDate);
                            },
                            icon: Icon(
                              Icons.calendar_month,
                              color: Colors.black38,
                            ),

                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black12,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children:  [
                                      SizedBox(
                                        //width: 20,
                                        height: 30,
                                      ),
                                      Text(
                                        'PRICE: ',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          //textStyle: Theme.of(context).textTheme.headlineSmall,
                                          color: Colors.grey.shade800,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          //fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      Text(
                                        '100TK',
                                        style: GoogleFonts.poppins(
                                          //textStyle: Theme.of(context).textTheme.headlineSmall,
                                          color: Colors.black,
                                          fontSize: 17,
                                          //fontWeight: FontWeight.w600,
                                          //fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),


                          // Text('23 SEPT 2023',
                          //   style: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 25,
                          // ),
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 650),
            child: Center(
              child: Container(
                height: 60,
                width: 190,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 108, 52, 222),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextButton(
                  onPressed: () {
                    //if()
                    //Navigator.push(context, MaterialPageRoute(builder: (context) =>const BookingDetails(),
                    //),
                    //);
                    // final user = UserInfo(
                    //     pickup: pickup,
                    //     dropoff: dropoff,
                    //     seatNo: seatNo,
                    //     time: time,
                    //     date: date);
                    //userinfo_controller

                  },
                  child:  Text('BOOK',
                    style: GoogleFonts.poppins(
                      //textStyle: Theme.of(context).textTheme.headlineSmall,
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}
