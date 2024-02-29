import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        toolbarHeight: 90,
        title: Row(
          children: [
            Container(
              width: 120,
              height: 40,
              child: TextField(
                obscureText: false,
                autofocus: true,
                //  keyboardType: TextInputType.numberWithOptions(),
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  labelText: "search",
                  hintText: "password",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.grey,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.telegram,
                color: Colors.white,
              ),
            ),
            Container(
              width: 120,
              height: 40,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                  Text(
                    " Add photo",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.orange,
                      Colors.red,
                      Colors.red,
                    ]),
                // color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 139, 132, 155),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 65),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image(
                      image: AssetImage("images/rasm20.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    "Instagram",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("images/rasm18.jpg"),
                radius: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: Text(
                "Qodirova Nozima",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Text(
                "@mi Nozi",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        "46",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ports",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Container(
                    width: 1,
                    height: 70,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        "2.8k",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Foll",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Container(
                    width: 1,
                    height: 70,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      Text(
                        "458",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Null",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.orange,
                ), // Faqatgina bir iconni oranjiy rangga o'zgartirish
                title: Text('Feed'),
                onTap: () {
                  print("bosildi");
                }),
            ListTile(
                leading: Icon(Icons.search), // Qolgan iconlar
                title: Text('Explore'),
                onTap: () {
                  print("bosildi");
                }),
            ListTile(
                leading: Icon(Icons.notifications_active), // Qolgan iconlar
                title: Text('Notifications'),
                onTap: () {
                  print("bosildi");
                }),
            ListTile(
                leading: Icon(Icons.telegram_sharp), // Qolgan iconlar
                title: Text('Direct'),
                onTap: () {
                  print("bosildi");
                }),
            ListTile(
                leading: Icon(Icons.chat_sharp), // Qolgan iconlar
                title: Text('Stats'),
                onTap: () {
                  print("bosildi");
                }),
            ListTile(
                leading: Icon(Icons.settings), // Qolgan iconlar
                title: Text('Settings'),
                onTap: () {
                  print("bosildi");
                }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1200,
          color: Colors.grey[800],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Text(
                      "Storis",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, right: 10),
                    child: Icon(Icons.pause_circle),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 30),
                    child: Text(
                      "Watch all",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 45,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 20,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          radius: 55,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage("images/rasm12.jpg"),
                            radius: 48,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          radius: 55,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage("images/rasm11.jpg"),
                            radius: 48,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          radius: 55,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage("images/rasm13.jpg"),
                            radius: 48,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          radius: 55,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage("images/rasm14.jpg"),
                            radius: 48,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Text(
                      "Feed",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 260,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, right: 30),
                    child: Text(
                      "La test",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 30),
                    child: Text(
                      "popular",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          width: 230,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rasm1.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(18),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("images/rasm12.jpg"),
                              radius: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("255",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("15",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          width: 230,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rasm3.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(18),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("images/rasm13.jpg"),
                              radius: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("1120",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("74",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          width: 230,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rasm4.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(18),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("images/rasm16.jpg"),
                              radius: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("2899",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("190",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          width: 230,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rasm6.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(18),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("images/rasm12.jpg"),
                              radius: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("2899",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("190",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          width: 235,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rasm9.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(18),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("images/rasm11.jpg"),
                              radius: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("450",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("32",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0, left: 10),
                        child: Container(
                          width: 250,
                          height: 220,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rasm2.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(18),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("images/rasm11.jpg"),
                              radius: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("80",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "5",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          width: 235,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rasm5.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(18),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("images/rasm14.jpg"),
                              radius: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("450",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("32",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          width: 230,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rasm7.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(18),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("images/rasm17.jpg"),
                              radius: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("2899",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("190",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          width: 230,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/rasm8.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(18),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage("images/rasm11.jpg"),
                              radius: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("2899",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("190",
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
