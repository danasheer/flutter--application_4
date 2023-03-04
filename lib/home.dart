// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  String playerOne = "rock";
  String playerTwo = "paper";

  void play() {
    List<String> signs = ["rock", "paper", "scissors"];

    int playerOneNum = Random().nextInt(3);
    int playerTwoNum = Random().nextInt(3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rock Paper Scissors"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              play();
            },
            child: Text("play")),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(children: [
            Image.asset(
              "assets/images/$playerOne.png",
              width: 150,
            ),
            Text("player 1"),
          ]),
          Column(
            children: [
              Image.asset(
                "assets/images/$playerTwo.png",
                width: 150,
              ),
              Text("player 2"),
            ],
          )
        ]),
        Column(
          children: [
            Image.asset(
              'images/$playerOne.png',
              width: 120,
              height: 120,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Player 1")
          ],
        ),
        const SizedBox(
          width: 80,
        ),
        Column(
          children: [
            Image.asset(
              'images/$playerTwo.png',
              width: 120,
              height: 120,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Player 2")
          ],
        ),
      ]),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
