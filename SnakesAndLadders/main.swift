//
//  main.swift
//  SnakesAndLadders
//
//  Created by wanxg on 14-6-20.
//  Copyright (c) 2014年 wanxg. All rights reserved.
//

import Foundation


var snakeRules = [24:16, 22:20, 19:8, 14:4]

var ladderRules = [3:11, 6:17, 9:18, 10:12]

var keys = Array(snakeRules.keys) + Array(ladderRules.keys)


func checkRule(indices:Int) -> Int {
    
    var result: Int? = indices
    
    for key in keys {
        
        if key == indices {
            
            var snakeResult = snakeRules[indices]
            
            if snakeResult != nil {
                
                print("BAD! YOU HIT SNAKE! MOVING BACK TO ")
            } else {
                
                print("NICE! YOU HIT LADDER! MOVING FORWARD TO ")
            }
            
            result =  snakeResult != nil ? snakeResult : ladderRules[indices]
            
            println(result)
            
            break
        }
    }

    return result!;
}

func rollDice() -> Int {
    
    return Int(arc4random_uniform(6)) + 1

}

println("WELCOME TO SNAKES AND LADDERS!")

var currentSquare = 1

while (currentSquare < 25) {
    
    println("--------------------------------")
    
    println("YOU STANDING ON SQUARE \(currentSquare)")
    
    print("ROLLING DICE ... GOT ")
    
    var dice = rollDice()
    
    println(dice)
    
    currentSquare += dice
    
    if currentSquare >= 25 {
        
        println("ACHIEVIED GOAL!")
        break
    }
    
    println("MOVING TO \(currentSquare)")
    
    var result = checkRule(currentSquare)

    if result != dice {

      currentSquare = result
    }
    

}

println("CONGRUDULATION! GAME OVER!")

println("GIT")

println("Working on ORIGIN branch.")


