import 'package:basics/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height; //600
    final double screenWidth = screenInfo.size.width; //800

    var holderOfVariables = AppLocalizations.of(context);
    
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
              holderOfVariables!.pizzaBaslik,
              style: TextStyle(
                  fontSize: screenWidth/22, color: mainColor, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("resources/pizza.jpeg")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(content: holderOfVariables.peynirYazi),
                Chip(content: holderOfVariables.sucukYazi),
                Chip(content: holderOfVariables.zeytinYazi),
                Chip(content: holderOfVariables.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  holderOfVariables.teslimatSuresi,
                  style: TextStyle(
                      fontSize: screenWidth/41,
                      color: secondaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  holderOfVariables.teslimatBaslik,
                  style: TextStyle(
                      fontSize: screenWidth/41,
                      color: primaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  holderOfVariables.pizzaAciklama,
                  style: TextStyle(
                    fontSize: screenWidth/41,
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
                holderOfVariables.fiyat,
                style: TextStyle(
                    fontSize: screenWidth/22,
                    color: mainColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: screenWidth/4,
                height: screenWidth/12,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                  child: Text(
                    holderOfVariables.butonYazi,
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

class Chip extends StatelessWidget {
  String content;
  Chip({required this.content});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: mainColor),
      child: Text(
        content,
        style: TextStyle(color: primaryTextColor),
      ),
    );
  }
}
