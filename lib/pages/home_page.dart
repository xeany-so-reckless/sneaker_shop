import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/bottom_navbar.dart';
import 'package:sneaker_shop/pages/cart_page.dart';
import 'package:sneaker_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //
  int _selectedIndex = 0;

  //
  //
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //
  final List<Widget> _pages = [
    //
    const ShopPage(),

    //
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding:  EdgeInsets.only(left: 12.0),
              child:  Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                            DrawerHeader(child: Image.asset(
              'lib/images/pngwing.com.png', 
              color: Colors.white,
              ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.grey[800],
                ),
              ),

              //other page
              const Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: 
                  Icon(
                    Icons.home,
                    color: Colors.white,),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),),),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: 
                  Icon(
                    Icons.info,
                    color: Colors.white,),
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.white),),),
              ),
              ],
            ),
            

              const Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  leading: 
                  Icon(
                    Icons.logout,
                    color: Colors.white,),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),),),
              ),



          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}