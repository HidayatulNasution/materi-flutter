import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Faker faker = Faker();

  final String currentDate = DateTime.now().toIso8601String();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat.yMMMMEEEEd().add_jms().format(DateTime.parse(currentDate));

    List<Widget> widgets = [
      ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          final name = faker.person.name();
          final imageUrl = "https://picsum.photos/id/${870 + index}/200/300";
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[400],
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text(name),
            subtitle: Text(formattedDate),
          );
        },
      ),
      Center(
        child: Text("menu ke 2"),
      ),
      Center(
        child: Text("menu ke 3"),
      ),
      Center(
        child: Text("menu ke 4"),
      ),
      Center(
        child: Text("menu ke 5"),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("Bottom Navigation Bar Package",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.reactCircle,
        backgroundColor: Colors.teal,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
