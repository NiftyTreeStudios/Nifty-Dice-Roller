//
//  Nifty-Dice-Roller.swift
//  Nifty Dice Roller
//
//  Created by Iiro Alhonen on 3.2.2021.
//  Copyright © 2021 Nifty Tree Studios. All rights reserved.
//

/**
 This function is used to roll the dice and returning the total of the roll.
 
 - Author: Iiro Alhonen
 - Parameter dice: The dice used
 - Parameter diceAmount: The amount of dice being rolled
 - Parameter modifier: The modifier used for the roll (-5, +6, etc.)
 */
func roll(dice: Int, diceAmount: Int, modifier: Int?) -> Int {
    let modifier = modifier ?? 0
    var calculatedTotal: Int = 0
    for _ in 1...diceAmount {
        let roll = Int.random(in: 1...dice)
        calculatedTotal += roll
    }
    calculatedTotal += modifier
    return calculatedTotal
}
