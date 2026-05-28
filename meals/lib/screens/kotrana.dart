import 'package:flutter/material.dart';

class Kotrana extends StatefulWidget {
  const Kotrana({super.key});

  @override
  State<Kotrana> createState() {
    return _KotranaState();
  }
}

class _KotranaState extends State<Kotrana> {
  late int num;

  @override
  void initState() {
    super.initState();
    num = 0;
  }

  void sum() {
    setState(() {
      num++;
    });
  }
  
  void minus() {
    setState(() {
      if (num > 0) num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              num.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                ElevatedButton(onPressed: minus, child: Text("-")),
                ElevatedButton(onPressed: sum, child: Text("+")),
                ElevatedButton(onPressed: () {
                  setState(() {
                    num= 0;
                  });
                }, child: Text("reset")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
