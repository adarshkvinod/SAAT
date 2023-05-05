import 'package:flutter/material.dart';
import 'package:saat/config/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SingleChildScrollView(
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border_rounded))
          ]),
        ),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 30,
            ),
            Text(
              "What's bothering you?",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 30,
            ),
            Card(
              // const OvalBorder(side: BorderSide(color: black)),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 20,
                  )
                ],
              ),
            ),
        
          ],
        )
      ]),
    );
  }
}
