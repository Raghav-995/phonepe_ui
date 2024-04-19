import 'dart:io';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:phonepe_ui/MyApp.dart';
import 'package:phonepe_ui/widgets/MyMoneyPage.dart';
import 'package:phonepe_ui/widgets/HistoryPage.dart';
import 'package:phonepe_ui/pages/StorePage.dart';
import 'package:phonepe_ui/pages/AppsPage.dart';
import 'package:phonepe_ui/widgets/Home.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myIndex = 0;

  File? pickedimagefile;
  String? imagePath;
  void _pickimage() async {
    final picker = ImagePicker();
    final pickedimage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedimage != null) {
      pickedimagefile = File(pickedimage.path);
      imagePath = pickedimage.path;
    }
  }

  Widget pageCaller(int index) {
    switch (index) {
      case 0:
        {
          return Home();
        }
      case 1:
        {
          return StorePage();
        }

      case 2:
        {
          return AppsPage();
        }

      case 3:
        {
          return MyMoneyPage();
        }

      case 4:
        {
          return HistoryPage();
        }
      default:
        {
          return MyApp();
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    String text = 'Home';
    return Scaffold(
//*********************** AppBar ***********************
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: _pickimage,
              icon: Icon(
                FontAwesomeIcons.camera,
              ),
              color: Theme.of(context).colorScheme.secondary,
            ),
            SizedBox(
              width: 4.0,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.pin_drop,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                label: Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                )),
          ],
        ),
        actions: [
          Icon(
            FontAwesomeIcons.qrcode,
            size: 21,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            FontAwesomeIcons.solidBell,
            size: 21,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            FontAwesomeIcons.circleQuestion,
            size: 21,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          Padding(padding: EdgeInsets.all(10)),
        ],
      ),

//************************ Bottom Navigation Bar *********************
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (indexValue) {
          setState(() {
            myIndex = indexValue;
          });
        },
        selectedItemColor: Color(0xff673ab7),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.indianRupeeSign),
            label: "Credit",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shield),
            label: "Insurance",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.arrowUpRightDots),
            label: "Wealth",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.rightLeft),
            label: "History",
          ),
        ],
      ),

//************************** Body **********************
      floatingActionButton: TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.qr_code),
        label: Text('Scan Qr'),
        style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromRGBO(214, 112, 248, 0.233)),
            foregroundColor:
                MaterialStatePropertyAll(Color.fromRGBO(6, 22, 248, 0.775))),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: pageCaller(myIndex),
    );
  }
}
