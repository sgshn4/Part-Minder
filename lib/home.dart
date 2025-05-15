import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Второе окно')),
      body: Column(
        children: [
          Row(
            children: [
              Expanded( // Занимает всё доступное пространство
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 150), // Отступы слева и справа
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
            child: ListView(
              children: [
                ListTile(title: Text('Элемент 1')),
                ListTile(title: Text('Элемент 2')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}