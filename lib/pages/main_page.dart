import 'package:elegore/pages/about_page.dart';
import 'package:elegore/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:elegore/pages/cart_page.dart';
import 'package:elegore/pages/discover_page.dart';
import 'package:elegore/pages/home_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List pages = [
    const HomePage(),
    const DiscoverPage(),
    const CartPage(),
  ];
  int _selectedIndex = 0;

  void navigatePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Elegoré",
          style: GoogleFonts.italiana(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            decorationThickness: 10,
          ),
        ),
        centerTitle: true,
        actions: [
          Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(Icons.more_horiz, size: 35),
              ),
            ),
          )
        ],
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text(
                "Elegoré",
                style: GoogleFonts.italiana(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  decorationThickness: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: const Icon(Icons.info_rounded),
                title: Text(
                  'About',
                  style: GoogleFonts.italiana(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Toggle Theme',
              style: GoogleFonts.italiana(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<Themeprovider>(context, listen: false)
                        .toggleTheme();
                  },
                  child: const Icon(Icons.light_mode_rounded),
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<Themeprovider>(context, listen: false)
                        .toggleTheme();
                  },
                  child: const Icon(Icons.dark_mode_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          padding: const EdgeInsets.all(20),
          onTabChange: (index) => navigatePage(index),
          mainAxisAlignment: MainAxisAlignment.center,
          iconSize: 25,
          tabBackgroundColor: Colors.deepPurpleAccent.withOpacity(0.1),
          tabBorderRadius: 80,
          tabs: const [
            GButton(
              icon: Icons.home_rounded,
              text: 'Home',
              gap: 8,
            ),
            GButton(
              icon: Icons.explore_rounded,
              text: 'Explore',
              gap: 8,
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: 'Cart',
              gap: 8,
            ),
          ],
        ),
      ),
    );
  }
}
