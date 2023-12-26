import 'package:travelapp/screen/screen_5.dart';
import 'package:travelapp/screen/screen_4.dart';
import 'package:flutter/material.dart';

class SchoolScreen extends StatelessWidget {
  SchoolScreen({super.key});
  String tempText =
      "Mahatma Gandhi Museum was formerly Alfred High School (also known as Mohandas Gandhi High School or Kathiawar High School) in Rajkot was one of the oldest educational institutions in India which was active for 164 years where Mahatma Gandhi studied few years.This school was constructed during British rule in India by political agent Kernel Singh, and was the first English school in the saurashtra (region). Originally called Rajkot English School, it was founded on 17 October 1853, and later became a full-fledged high school. By 1868 it came to be known as Rajkot High School, and was named Alfred High School in 1907. The present buildings of the Alfred High School were built for Kathiawar by the Nawab of Junagadh, Nawab Nawab Sir Muhammad Bahadur Khanji Babi, and was named Prince Alfred, the Duke of Edinburgh, as a memorial. This school was opened in January, 1875 by Sir Philip Wodehouse, Governor of Bombay.[2] Following India's independence in 1947, the school was renamed the Mohandas Gandhi High School in honour of Gandhi.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              height: 50,
              color: Colors.blue,
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
                  const Text("ALFRED HIGH SCHOOL"),
                ],
              ),
            ),
            Container(
              height: 200,
              child: Image.network("https://unbought-milk.000webhostapp.com/images/download%20(1).jpg"),
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
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen4()));
                },
                child: const Text("Screen4")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen5()));
                },
                child: const Text("Screen5"))
          ],
        ),
      ),
    );
  }
}
