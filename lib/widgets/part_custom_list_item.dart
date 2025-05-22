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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            Container(
              width: 80,
              height: 80,
              child: Image.asset(item.image),
            ),
            const SizedBox(width: 12),
            // Правая часть (текстовая информация)
          ],
        ),
      ),
    );
  }
}