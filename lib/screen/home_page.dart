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
    return SafeArea(
      child: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
          child: Column(children: [
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
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/adarsh.jpg")), //fetch the user's profile picture here.
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 55.0,
                  width: 55.0,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Share anything you want?", //store the text 
                        hintStyle: TextStyle(color: Colors.grey)), 
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
