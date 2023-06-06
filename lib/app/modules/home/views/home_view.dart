import 'package:app_day_project/app/data/task_model.dart';
import 'package:app_day_project/app/modules/home/widgets/trend_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../offerDetail/views/offer_detail_view.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/my_app_bar.dart';
import '../widgets/tab_bar.dart';
import '../widgets/task_widget.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> tabTitles = ['Tab 1', 'Tab 2', 'Tab 3', 'Tab 4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: DefaultTabController(
            length: tabTitles.length,
            child: Column(
              children: [
                MyAppBar(scaffoldKey: _scaffoldKey),
                TabBarWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 150,
                  child: TabBarView(
                    children: [
                      // Content for Tab 1
                      Container(
                        child: Center(
                          child: GetBuilder<HomeController>(
                            init: HomeController(),
                            builder: (controller) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.local_fire_department_outlined,
                                          color: Colors.amberAccent,
                                          size: 30,
                                        ),
                                        Text(
                                          "Ternding Offers",
                                          style: TextStyle(fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 200,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: images.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return TrendWidget(index: index);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.menu_rounded,
                                          color: Colors.blue,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "More Offers",
                                          style: TextStyle(fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      // scrollDirection: Axis.horizontal,
                                      itemCount:
                                          controller.tasksMessages.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return TaskWidget(
                                          index: index,
                                          model:
                                              controller.tasksMessages[index],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      // Content for Tab 2
                      Container(
                        child: Center(
                          child: Text(
                            'Content of Tab 2',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      // Content for Tab 3
                      Container(
                        child: Center(
                          child: Text(
                            'Content of Tab 3',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      // Content for Tab 4
                      Container(
                        child: Center(
                          child: Text(
                            'Content of Tab 4',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget taskWidget(int index, TaskModel model) {
  //   return TaskWidget
  // }

  List<String> images = [
    "images/image1.png",
    "images/image2.png",
    "images/image1.png"
  ];
}
