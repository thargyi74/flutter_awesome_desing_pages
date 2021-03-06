import 'package:flutter/material.dart';
import 'package:testapp/animated_wave_card.dart';
import 'package:testapp/credit_card_page.dart';
import 'package:testapp/custom_gift_card.dart';
import 'package:testapp/energy_card.dart';
import 'package:testapp/first_page.dart';
import 'package:testapp/onboarding_page.dart';
import 'package:testapp/pass_code_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Awesome Desings"),
      ),
      backgroundColor: Colors.blue.shade300,
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          buildCardWithIcon(
            Icons.card_giftcard,
            context,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CustomGiftCardPage();
                  },
                ),
              );
            },
            "Custom Gift Card",
          ),
          buildCardWithIcon(
            Icons.supervisor_account,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FirstLoginPage();
              }));
            },
            "Login Page",
          ),
          buildCardWithIcon(
            Icons.widgets,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EnergyCardPage();
              }));
            },
            "Energy Meter Widget",
          ),
          buildCardWithIcon(
            Icons.security,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PassCodeScreen();
              }));
            },
            "Pass Code Page",
          ),
          buildCardWithIcon(
            Icons.widgets,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AnimatedWaveCard();
              }));
            },
            "Animated Wave Widget",
          ),
          buildCardWithIcon(
            Icons.credit_card,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CreditCardPage();
              }));
            },
            "Credit Card Page",
          ),
          buildCardWithIcon(
            Icons.perm_device_information,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OnboardingPage();
              }));
            },
            "Onboarding Page",
          ),
        ],
      ),
    );
  }

  Padding buildCardWithIcon(
      IconData icon, context, VoidCallback onTap, String pageName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 70,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  pageName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
