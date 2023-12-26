import 'package:travelapp/screen/historical.dart';
import 'package:travelapp/screen/high_school.dart';
import 'package:flutter/material.dart';

class GridLayout {
  String title;
  IconData icon;

  GridLayout({required this.title, required this.icon});
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<GridLayout> options = [
    GridLayout(title: 'ABOUT RAJKOT', icon: Icons.home),
    GridLayout(title: 'HOW TO REACH', icon: Icons.place),
    GridLayout(title: 'RAJKOT IN MAP', icon: Icons.map),
    GridLayout(title: 'HISTORICAL PLACES', icon: Icons.place_sharp),
    GridLayout(title: 'DEVOTIONAL PLACES', icon: Icons.place_sharp),
    GridLayout(title: 'AMUSEMENT PARKS', icon: Icons.park),
    GridLayout(title: 'DAMS/LAKE', icon: Icons.place_sharp),
    GridLayout(title: 'OTHER PLACES', icon: Icons.place_sharp),
    GridLayout(title: 'PLACES TO SEE AROUND', icon: Icons.place_sharp),
    GridLayout(title: 'CINEMAS', icon: Icons.movie),
    GridLayout(title: 'HOTELS', icon: Icons.hotel),
    GridLayout(title: 'MALLS', icon: Icons.local_mall),
    GridLayout(title: 'TRAVEL GUIDE', icon: Icons.travel_explore),
    GridLayout(title: 'DISTANCES', icon: Icons.social_distance),
    GridLayout(title: 'DEVELOPER', icon: Icons.developer_mode),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: options.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (index == 3) {
                ///Historical Screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => HistoricalScreen()));
              }
            },
            child: Container(
              color: Colors.orange.withOpacity(0.3),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(options[index].icon),
                    const SizedBox(height: 20),
                    Text(options[index].title),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
