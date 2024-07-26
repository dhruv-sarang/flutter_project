import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Material App',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> categoryList = ['Bags', 'Electronics', 'Shoes', 'Cloths'];

  List<Widget> widgetList = [
    Center(
      child: Text('Home Screen'),
    ),
    Center(
      child: Text('Order Screen'),
    ),
    Center(
      child: Text('Notification Screen'),
    ),
    Center(
      child: Text('Wishlist Screen'),
    ),
    Center(
      child: Text('Bags Screen'),
    ),
    Center(
      child: Text('Electronics Screen'),
    ),
    Center(
      child: Text('Shoes Screen'),
    ),
    Center(
      child: Text('Cloths Screen'),
    )
  ];

 /* List<Widget> allCategoryList = [
    Center(
      child: Text('Bags Screen'),
    ),
    Center(
      child: Text('Electronics Screen'),
    ),
    Center(
      child: Text('Shoes Screen'),
    ),
    Center(
      child: Text('Cloths Screen'),
    )
  ];*/


  int selectedIndex = 0;

  itemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
      Navigator.pop(context);
    });
  }

  /*allCategoryItemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index+widgetList.length;
      Navigator.pop(context);
    });
  }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: widgetList[selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  /*crossAxisAlignment: CrossAxisAlignment.start,*/
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.shopping_basket, size: 36),
                      radius: 30,
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Shopping Hub',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'shoppinghub@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                itemClicked(0, context);
              },
              title: Text('Hone'),
              leading: Icon(
                Icons.home,
                color: Colors.grey,
              ),
            ),
            ListTile(
              onTap: () {
                itemClicked(1, context);
              },
              title: Text('My Order'),
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
            ),
            ListTile(
              onTap: () {
                itemClicked(2, context);
              },
              title: Text('Notification'),
              leading: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              trailing: Badge(
                label: Text('21'),
              ),
            ),
            ListTile(
              onTap: () {
                itemClicked(3, context);
              },
              title: Text('Wishlist'),
              leading: Icon(
                Icons.bookmark,
                color: Colors.grey,
              ),
            ),
            ExpansionTile(
              title: Text('All categories'),
              leading: Icon(
                Icons.category,
                color: Colors.grey,
              ),
              children: List.generate(
                categoryList.length,
                (index) => ListTile(
                  onTap: () {
                    itemClicked(index+(widgetList.length-categoryList.length), context);
                  },
                  title: Text(categoryList[index]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
