import 'package:assigment4/CustomBottomNav.dart';
import 'package:flutter/material.dart';

import 'ProfileWidget.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final Map<String, IconData> icons = {
    'home': Icons.home,
    'search': Icons.search,
    'notification': Icons.notifications_outlined,
    'user': Icons.person_outline,
  };
  final images = [
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
    'images/man.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('stylish'.toUpperCase(),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.grey[700]),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[700]), onPressed: () {})
        ],
      ),
      body:Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15,right: 20,left: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/man.jpg'),
                        radius: 45,
                      ),
                      IntrinsicWidth(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                ProfileWidget('1,252', 'posts'),
                                ProfileWidget('4m', 'followers'),
                                ProfileWidget('256', 'following'),
                              ],
                            ),
                            RaisedButton(
                              onPressed: () {},
                              child: Text(
                                'Edit profile',
                                style: TextStyle(color: Colors.grey[700], fontSize: 16),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home Furniture',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Home Furniture Home Furniture Home Furniture',
                        style: TextStyle(
                            color: Colors.grey[700], fontSize: 16, height: 1.5),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Contact us:',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Text(
                        '+972 222 333 555',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Gaza, Palestine',
                        style: TextStyle(
                            color: Colors.grey[700], fontSize: 16, height: 1.5),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  'Add Product',
                                  style:
                                  TextStyle(color: Colors.grey[700], fontSize: 14),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  'Share',
                                  style:
                                  TextStyle(color: Colors.grey[700], fontSize: 14),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  'Contact Us',
                                  style:
                                  TextStyle(color: Colors.grey[700], fontSize: 14),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(height: 2, color: Colors.grey[300]),
                      SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
            ),

            Flexible(
              child: Container(
                padding: EdgeInsets.only(right: 15,left: 15),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1,
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Container(

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      );
                    }),
              ),
            )
          ],
      ),
      bottomNavigationBar: CustomBottomNav(icons, onItemClicked),
    );
  }
}


onItemClicked(int i) {
  print(i);
}
