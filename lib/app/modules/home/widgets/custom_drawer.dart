import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  List<String> drawerList = [
    '',
    "My Offer",
    "App Useage",
    "Support",
    "Terms and Conditions",
    "Policies",
    "Rate Us",
    "Log Out"
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    height: 200,
                    color: Colors.blue,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors
                                      .yellow, // Replace with your desired color
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Shubham Kumar', // Replace with the name
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Kartik@gmail.com', // Replace with the email
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.blue,
                    ),
                    title: Text(drawerList[index]),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle drawer item tap
                    },
                  );
                }
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 1,
                  color: Colors.grey,
                );
              },
              itemCount: 8, // 8 ListTiles + 1 for the header container
            ),
          ),
          // Spacer(),
          Column(
            children: [
              Text("Follow Us"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.camera,
                        color: Colors.pink,
                      ),
                      Icon(
                        Icons.youtube_searched_for,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
