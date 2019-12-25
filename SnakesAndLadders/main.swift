//
//  main.swift
//  SnakesAndLadders
//
//  Created by kasra ebrahimi on 7/19/1398 AP.
//  Copyright © 1398 AP kasra ebrahimi. All rights reserved.
//

import Foundation

print("welcome to 🐍 and ladders")

var turn = false
var is🅰️OnBoard = false
var is🅱️OnBoard = false
var plyr🅰️roomNumb = 0
var plyr🅱️roomNumb = 0

repeat {
    print("🐻 in <\(plyr🅰️roomNumb)> and 🐨 in <\(plyr🅱️roomNumb)>")
    if turn == false {
        print(">>> now it's player 🐻 turn")
    } else {
        print(">>> now it's player 🐨 turn")
    }
    print("press <d> to roll 🎲 : ",terminator :"")
    let rollDice = String(readLine()!)
    if rollDice == "d" {
        let randomDiceNo = Int.random(in: 1...6)
        print("you get 🎲 : \(randomDiceNo)")
        if turn == false {
            if is🅰️OnBoard == false && randomDiceNo == 6 {
                plyr🅰️roomNumb = 1
                is🅰️OnBoard = true
            } else {
                if is🅰️OnBoard {
                    plyr🅰️roomNumb += randomDiceNo
                    if plyr🅰️roomNumb > 100 {
                        print("💐 you win!!! 👏 Player 🐻 👏")
                        break
                    }
                    if plyr🅰️roomNumb % 10 == 0 {
                        plyr🅰️roomNumb -= 10
                    }
                    if plyr🅰️roomNumb == plyr🅱️roomNumb {
                        plyr🅱️roomNumb = 0
                        is🅱️OnBoard = false
                    }
                    if randomDiceNo == 6 {
                        turn = false
                    } else {
                        turn = true
                    }
                } else {
                    turn = true
                }
            }
        } else {
            if is🅱️OnBoard == false && randomDiceNo == 6 {
                plyr🅱️roomNumb = 1
                is🅱️OnBoard = true
            } else {
                if is🅱️OnBoard {
                    plyr🅱️roomNumb += randomDiceNo
                    if plyr🅱️roomNumb > 100 {
                        print("💐 you win!!! 👏 Player 🐨 👏")
                        break
                    }
                    if plyr🅱️roomNumb % 10 == 0 {
                        plyr🅱️roomNumb -= 10
                    }
                    if plyr🅱️roomNumb == plyr🅰️roomNumb {
                        plyr🅰️roomNumb = 0
                        is🅰️OnBoard = false
                    }
                    if randomDiceNo == 6 {
                        turn = true
                    } else {
                        turn = false
                    }
                } else {
                    turn = false
                }
            }
        }
    }
}
while plyr🅰️roomNumb < 100 || plyr🅱️roomNumb < 100


