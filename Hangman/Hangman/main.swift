//
//  main.swift
//  Hangman
//
//  Created by Alex Paul on 10/15/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation
var words = ["wer","wer"]
var userChoice = readLine()
var randomWord = words.randomElement()
let wordArray = Array(randomWord!)
// build up the
var char : Character
var blanks = Array(repeating: Character("_"), count: randomWord!.count)
let abcs = "abcdefghijklmnopqrstuvwxyz"
// needed a set instead of a dict
var correctLetters = [Character:Int]()
var incorrectLetters = [Character:Bool]()
if userChoice?.count == 1 {
    char = Character(userChoice!)
    if correctLetters[char] == nil && wordArray.contains(char){
//        print("")
        for (idx, val) in wordArray.enumerated() where val == char {
            // update the blanks array
            blanks[idx] = char
            // doesn't need to store idx
            correctLetters[char] = idx
        }
    } else {
        print("")
    }
} else {
    print("Please enter a single letter which has not been selected")
}
