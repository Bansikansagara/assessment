import 'package:travelapp/screen/high_school.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  Screen4({super.key});

  List<String> data = [
    'ANALGADH HILL STATION',
    'CHAMUNDA TEMPLE CHOTILA',
    'GONDAL CITY',
    'HINGOLGADH PALACE AND BIRD SANCTURY',
    'KHODALDHAM TEMPLE',
    'MORBI PALACCE',
    'VIRPUR JALARAM TEMPLE',
    'WANKANER PALACE',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.pink,
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
                    const Text("PlaceS To See Around"),
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SchoolScreen()));
                      },
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            const SizedBox(width: 20),
                            const Icon(Icons.location_on_outlined),
                            const SizedBox(width: 20),
                            Text(data[index]),
                            const Spacer(),
                            const Icon(Icons.arrow_right),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
