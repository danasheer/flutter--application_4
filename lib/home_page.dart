import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  String playerOne = "rock";
  String playerTwo = "paper";

  String result = "";

  void play() {
    List<String> signs = ["rock", "paper", "scissors"];

    int playerOneNum = Random().nextInt(3);
    int playerTwoNum = Random().nextInt(3);
    setState(() {
      playerOne = signs[playerOneNum];
      playerTwo = signs[playerTwoNum];
      if (playerOne == 'paper' && playerTwo == 'rock') {
        result = "Player 1 Wins";
      } else if (playerOne == 'scissors' && playerTwo == 'paper') {
        result = "Player 1 Wins";
      } else if (playerOne == 'rock' && playerTwo == 'scissors') {
        result = "Player 1 Wins";
      } else if (playerOne == playerTwo) {
        result = "Tie";
      } else {
        result = "Player 2 Wins";
      }
    });
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
        const SizedBox(
          width: 80,
        ),
      ]),
    );
    ;
  }
}
