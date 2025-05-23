import 'package:flutter/material.dart';
import 'package:part_minder/structures/part.dart';
import 'package:part_minder/widgets/part_custom_list_item.dart';
import 'package:part_minder/structures/part_icons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Part> items = [
    Part(id: 0,
        name: 'Масло',
        article: 7444159,
        isChanged: false,
        resource: 10000,
        image: PartIcons.liquid.source),
    Part(id: 1,
        name: 'Батарейка',
        article: 7444159,
        isChanged: false,
        resource: 10000,
        image: PartIcons.battery.source),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 100, left: 150, right: 150),
                  child: TextField(
                    style: TextStyle(fontSize: 24),
                    maxLength: 6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "124756",
                      counterText: "",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return PartCustomListItem(item: items[index]);
                }
            ),
          ),
        ],
      ),
    );
  }
}