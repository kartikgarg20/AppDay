import 'package:app_day_project/app/data/task_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../offerDetail/views/offer_detail_view.dart';

class TaskWidget extends StatelessWidget {
  final int index;
  final TaskModel model;
  const TaskWidget({Key? key, required this.index, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Get.to(OfferDetailView(model: model));
          },
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 3, color: Colors.blue),
            ),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 70,
                      width: 70,
                      child: Image.network(
                        model.thumbnail,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 15),
                          child: Container(
                            child: Text(
                              model.title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 15, left: 15),
                                child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 1, color: Colors.blue),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Get Rs.230',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    )),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.electric_bolt_rounded,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Text(
                              '23,333',
                              style: TextStyle(color: Colors.amber),
                            ),
                            SizedBox(
                              width: 15,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
