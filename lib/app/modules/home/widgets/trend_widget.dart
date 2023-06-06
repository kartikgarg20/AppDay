import 'package:flutter/material.dart';

class TrendWidget extends StatelessWidget {
  final int index;
  TrendWidget({Key? key, required this.index}) : super(key: key);

  List<String> images = [
    "images/image1.png",
    "images/image2.png",
    "images/image1.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 100,
            width: 150,
            child: Column(
              children: [
                Image.asset(images[index]),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Game"),
                        Text('Get Rs.230'),
                        Row(
                          children: [
                            Icon(
                              Icons.electric_bolt_rounded,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Text(
                              '23,333',
                              style: TextStyle(color: Colors.amber),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
