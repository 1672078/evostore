import 'package:evo_store/constanta.dart';
import 'package:evo_store/pages/home.dart';
import 'package:evo_store/pages/search_page.dart';
import 'package:evo_store/pages/transaksi_page.dart';
import 'package:evo_store/pages/wishlist.dart';
import 'package:flutter/material.dart';

class TabbarComponent extends StatefulWidget {
  const TabbarComponent({Key? key}) : super(key: key);

  @override
  State<TabbarComponent> createState() => _TabbarComponentState();
}

class _TabbarComponentState extends State<TabbarComponent> {
  //get nama from DataProvider

  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const SearchPage(),
    const Wishlist(),
    const TransaksiPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // _getdatauser();
    // _getdatsettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final datauser = Provider.of<DataProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: const PreferredSize(
      //     preferredSize: Size.fromHeight(50.0), child: AppbarDefault()),
      // drawer:
      //     //drawer sample
      //     Drawer(
      //         child: ListView(children: const <Widget>[
      //   UserAccountsDrawerHeader(
      //     accountName: Text('Halo Bengkel'),
      //     accountEmail: Text('d'),
      //   )
      // ])),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.red,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: const TextStyle(
                    color: Colors
                        .yellow))), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          type: BottomNavigationBarType.fixed,
          //fixed size
          // type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Whishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_sharp),
              label: 'Transaction',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: bluedefault(),
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
          elevation: 10,
        ),
      ),
    );
  }
}
