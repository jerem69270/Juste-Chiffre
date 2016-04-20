//
//  main.swift
//  Juste-Chiffre
//
//  Created by Jérémy Reynard on 19/04/2016.
//  Copyright © 2016 Jérémy Reynard. All rights reserved.
//

import Foundation

let answer = randomIntBetween(0, high: 100)

print("Enter a number between 1 and 100.")
var turn = 1

while(true) {
    let userInput = input()
    let inputAsInt = Int(userInput) // convert string to int , inputAsInt is int? type or "optional int"
    if let guess = inputAsInt  { // check if inputAsInt contain a value (it's optionnal bind)
        if(guess > answer) {
            print("Lower!")
        } else if(guess < answer) {
            print("Higher!")
        } else {
            print("Correct! The answer was \(answer).")
            break
        }
    }  else  {
        print("Invalid input! Please enter a number.")
        continue
    }
    turn = turn + 1
}

print("It took you \(turn) tries")


