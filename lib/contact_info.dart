import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInfoPage extends StatelessWidget {
  const ContactInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        title: const Text("Contact Info"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const SizedBox(height: 25),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  "Contact Information",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Contact Info Cards
          ...List.generate(
            customListTiles.length,
                (index) {
              final tile = customListTiles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.black,
                  child: ListTile(
                    leading: Icon(tile.icon),
                    title: Text(tile.title),
                    subtitle: Text(tile.details)
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class CustomListTile {
  final String title;
  final IconData icon;
  final String details;
  CustomListTile({
    required this.title,
    required this.icon,
    required this.details,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    title: "Email",
    icon: Icons.email,
    details: "angus.lu@gmail.com",
  ),
  CustomListTile(
    title: "Phone",
    icon: Icons.phone,
    details: "+1234567890",
  ),
  CustomListTile(
    title: "Github",
    icon: Icons.email,
    details: "https://github.com/uiskskkekekk",
  ),
];