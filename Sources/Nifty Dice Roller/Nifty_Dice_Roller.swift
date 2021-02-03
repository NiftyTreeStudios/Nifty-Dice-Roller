struct Nifty_Dice_Roller {
    var text = "Hello, World!"
}

func roll(dice: Int, diceAmount: Int, modifier: Int?) -> Int {
    let modifier = modifier ?? 0
    return diceAmount * dice + modifier
}
