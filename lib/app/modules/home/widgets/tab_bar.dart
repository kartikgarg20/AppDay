import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TabBar(
          indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 4.0, color: Colors.blue),
              ),
              color: Color.fromARGB(255, 202, 223, 254)),
          tabs: [
            Tab(
              child: Column(
                children: [
                  Icon(
                    Icons.adobe,
                    color: Colors.blue,
                  ),
                  Spacer(),
                  Text(
                    "All Offers",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Icon(
                    Icons.card_giftcard_sharp,
                    color: Colors.red,
                  ),
                  Spacer(),
                  Text(
                    "Gifts",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: Colors.yellow,
                  ),
                  Spacer(),
                  Text(
                    "Upcoming",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.deepPurple,
                  ),
                  Spacer(),
                  Text(
                    "My Offers",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
