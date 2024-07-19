import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var services = [
    "Sofa Cleaning Services",
    "Carpet Cleaning Services",
    "Deep Cleaning Services",
    "Office Cleaning Services",
    "Window Cleaning Services",
    "Post Construction Cleaning Services",
    "Wall Painting Services",
    "Move In/Out Cleaning Services",
  ];

  var images = [
    "images/adornment.png",
    "images/broom.png",
    "images/cleaner.png",
    "images/house.png",
    "images/offices.png",
    "images/paint-roller.png",
    "images/vacuum.png",
    "images/window.png"
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: services.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                images[index],
                height: 40,
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  services[index],
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
