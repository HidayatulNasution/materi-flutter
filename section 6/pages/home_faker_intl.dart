import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  var faker = new Faker();

  String tanggal = DateTime.now().toIso8601String();

  @override
  Widget build(BuildContext context) {
    print(faker.person.name());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: Text("INTL", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[400],
            backgroundImage:
                NetworkImage("https://picsum.photos/id/${870 + index}/200/300"),
          ),
          title: Text("${faker.person.name()}"),
          subtitle: Text(
              "${DateFormat.yMMMMEEEEd().add_jms().format(DateTime.parse(tanggal))}"),
        ),
      ),
    );
  }
}
