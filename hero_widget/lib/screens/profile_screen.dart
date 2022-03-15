import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const Positioned(
                  left: 20,
                  bottom: 0,
                  child: Hero(
                    tag: "hero tag 2",
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 57,
                        backgroundImage:
                            AssetImage("assets/profile_avatar.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          _divider(),
          _divider(),
          _divider(),
          _divider(),
          _divider(),
          _divider(),
          _divider(),
          _divider(),
          _divider(),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Divider _divider() {
    return const Divider(
      height: 40,
      thickness: 5,
      endIndent: 30,
      indent: 30,
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 4,
      selectedItemColor: Colors.blue,
      selectedFontSize: 1,
      selectedIconTheme: const IconThemeData(size: 35),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search_sharp,
              size: 30,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              size: 30,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              size: 30,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ],
    );
  }
}
