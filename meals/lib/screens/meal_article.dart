import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealArticleScreen extends StatelessWidget {
  const MealArticleScreen({super.key, required this.title , required this.meal});

  final String title;
  final Meal meal;


  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/960px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg",
            ),
            fit: BoxFit.cover,
            height: 220,
            width: double.infinity,
          ),
          Text("Ingredients", style: TextStyle(color: Colors.white),),
          Text("Steps", style: TextStyle(color: Colors.white),),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
