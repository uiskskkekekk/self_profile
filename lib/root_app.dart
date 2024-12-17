// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'skills.dart';
import 'contact_info.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        title: const Text("PROFILE"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // COLUMN THAT WILL CONTAIN THE PROFILE
          Column(
            children: const [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('img/profile.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                "Angus LU",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Pretty Suck Engineer")
            ],
          ),

          const SizedBox(height: 25),

          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  "My Repositories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          SizedBox(
            height: 180,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final card = profileCompletionCards[index];
                return SizedBox(
                  width: 160,
                  child: Card(
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Icon(
                            card.icon,
                            size: 40,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            card.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,  // 设置字体加粗
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            card.Description,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) =>
              const Padding(padding: EdgeInsets.only(right: 5)),
              itemCount: profileCompletionCards.length,
            ),
          ),
          const SizedBox(height: 25),
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
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      // 根据点击的项，跳转到不同的页面
                      if (tile.title == "Skills") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SkillsPage()),
                        );
                      } else if (tile.title == "Contact info") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ContactInfoPage()),
                        );
                      }
                    },
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

class ProfileCompletionCard {
  final String title;
  final IconData icon;
  final String Description;
  ProfileCompletionCard({
    required this.title,
    required this.icon,
    required this.Description,
  });
}

List<ProfileCompletionCard> profileCompletionCards = [
  ProfileCompletionCard(
    title: "Pixer",
    icon: Icons.brush,
    Description: "An art platform"
  ),
  ProfileCompletionCard(
    title: "Bio Viewer",
    icon: Icons.biotech,
    Description: "DNA visualization",
  ),
  ProfileCompletionCard(
    title: "DVOTE",
    icon: Icons.how_to_vote,
    Description: "Decentralized voting",
  ),
  ProfileCompletionCard(
    title: "Echo Sence",
    icon: Icons.multitrack_audio,
    Description: "Music Feature Analysis",
  ),
];

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Icons.insights,
    title: "Skills",
  ),
  CustomListTile(
    title: "My Website (stay tune...)",
    icon: Icons.web,
  ),
  CustomListTile(
    icon: Icons.email,
    title: "Contact info",
  ),
  CustomListTile(
    title: "I have No Idea",
    icon: Icons.question_mark,
  ),
];