import 'package:flutter/material.dart';
import 'package:part_minder/structures/part.dart';

class PartCustomListItem extends StatelessWidget {
  final Part item;

  const PartCustomListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 32),
                    child:
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )

                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 32),
              child: Image.asset(item.image, width: 60, height: 60),
            ),
          ],
        ),
      ),
    );
  }
}
