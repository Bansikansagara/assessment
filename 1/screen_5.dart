import 'package:travelapp/screen/screen_4.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  Screen5({super.key});
  String tempText =
      "Pradhyuman Zoological Park is located near Lalpari Lake in Rajkot, Gujarat. It is commonly referred to as the Pradhyuman/Rajkot Prani Sanghralaya. The area covered by the park is 137 acres wide. Many locals and tourists visit this place as a popular picnic destination as an excursion or a school tour visit. The two lakes surrounding the park – Lake Lalpari and Lake Randarda provide a natural habitat for migratory birds along with the variety of flora and over thirty-five thousand trees. There are in-built necessities and cafes. Golf carts are provided for senior citizens. There is an extra charge for availing cameras and video-recorder inside the park.";
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.brown,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text("PRADYUMAN PARK"),
                  ],
                ),
              ),
              Container(
                height: 200,
                child: Image.network("https://unbought-milk.000webhostapp.com/images/download%20(2).jpg"),
              ),
              Container(
                height: 50,
                color: Colors.grey.withOpacity(0.3),
                child: const Row(
                  children: [
                    Text(
                      "Info",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Text(tempText),
              const SizedBox(height: 20),
              Container(
                height: 50,
                color: Colors.grey.withOpacity(0.3),
                child: const Row(
                  children: [
                    Text(
                      "Timing",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text("Morning"),
                  SizedBox(width: 20),
                  Text("8AM - 11AM"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text("Afternoon"),
                  SizedBox(width: 20),
                  Text("3PM - 6PM"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
