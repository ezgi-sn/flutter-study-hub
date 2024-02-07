import 'package:basics/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style: TextStyle(color: primaryTextColor, fontFamily: "Merienda"),
        ),
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              "Beef Cheese",
              style: TextStyle(
                  fontSize: 36, color: mainColor, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
              width: 200, height: 200,
              child: Image.asset("resources/pizza.jpeg")
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: mainColor),
                  child: Text(
                    "Cheese",
                    style: TextStyle(color: primaryTextColor),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: mainColor),
                  child: Text(
                    "Sausage",
                    style: TextStyle(color: primaryTextColor),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: mainColor),
                  child: Text(
                    "Olive",
                    style: TextStyle(color: primaryTextColor),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: mainColor),
                  child: Text(
                    "Pepper",
                    style: TextStyle(color: primaryTextColor),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "20 mins",
                  style: TextStyle(
                      fontSize: 22,
                      color: secondaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Delivery",
                  style: TextStyle(
                      fontSize: 22,
                      color: primaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Meat lover, get ready to meet your pizza!",
                  style: TextStyle(
                    fontSize: 22,
                    color: secondaryTextColor,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                  "\$5.90",
                  style: TextStyle(
                      fontSize: 44,
                      color: mainColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 200, height: 50,
                  child: TextButton(
                    onPressed: () {},
                    style: 
                    TextButton.styleFrom(backgroundColor: mainColor, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))) ),
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(color: primaryTextColor),
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
