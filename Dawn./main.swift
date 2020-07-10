//
//  main.swift
//      Text Based Adventure Game
//  Created by @Nyumat on 6/5/20.
//  Copyright © 2020 Thomas Nyuma. All rights reserved.
//

import Foundation


// Beginning of DawnOfSurvival from a user input standpoint.

var player = Person(health: 100,hunger:50,Sleepiness: 0,Strength: 100,Armor: 0,Sanity: 50,healthy: true,hungry: false, sleepy: false)
var toggle = toggleSwitches(gameOn:true, gameOff:false , gameOver: true)

let animals = ["dog","rabbit",]

let originalCrew = orgCrew()
    
// True begginning of DrOS. Choose a player

originalCrew.choosePlayer()

var playerChoice = readLine()


    
toggle.runGame()
    

var dog = Dog(health: 11, runningSpeed: 1,Stength: 30, foodPoints:5,Armor:5)

var time = TimeOfDay(hour:1...24,minute:0...60)

var rabbit = (health: 8, runningSpeed:1,Strength: 10, foodPoints: 30,Amor:0)

print("\( playerChoice!)...the world has ended and the year is 2058, your plane to mexico crashed and you're a sole survivor stuck on an Island... All alone. You're a good buck, but life just his you in the worst ways possible sometimes. Welcome to the World of Astoria.")


if player.health < 50 {
    player.healthy = false
    print("\(playerChoice!), your health has dropped below 50 xp. Remember, if you get to 0, you die and the game ends. Eat food and sleep to replenish your health.")
}

if player.Sleepiness > 20 {
    while player.sleepy == true {
        player.Strength -= 50
        player.Sanity -= 20
    }
    print("I'm starting to get sleepy...")
}

print("Continue?...'yes' or 'no'")

    let userInput = readLine()

    if userInput == "yes"   {
        
                print("Great. Now you're finally going to begin the real survival.")
        
                    }    else if userInput == "no"   {
        
        print("You'll regret this...")
}
print("There's plenty of resources on this island, but I should probably get sticks and try to create a fire...")

print("Damn....Now that I've been exploring for a while, there's not much around here, let's look for some food before the night comes upon me. ")

print("Continue?...'yes' or 'no'")

    _ = readLine()
switch  userInput  {
case  "yes" :
    print("Oh look, an apple tree! I should try and get those apples from there and eat it.")
case "no" :
    break
default:
    break
}

print("Should you climb the apple tree? 'Yes' or 'No'")

    let userInput3 = readLine()
if userInput3 == "Yes"{
    
    player.Sleepiness += 30
    player.hunger += 10
    player.Strength -= 5
    player.Sanity -= 5
    print("Phew, that was a hefty climb!")
    
} else if userInput == "No" {
    player.Sleepiness += 10
    print("Welp, better luck next time. Let's keep moving")
}

print("Continue?...Yes or No")
    let userInput4 = readLine()

if userInput4 == "Yes"{
    
    print("Maybe I should eat these apples, lets go...")
    
} else if userInput4 == "No" {
    _ =  kCFAllocatorNull
}

player.eatFood()

print("It's starting to get late, I need to make a shelter and get more fire wood...")

print("Ohh a river...should swim for a bit? 'yes' or 'no'")
    let userInput5 = readLine()


if userInput5 == "yes" {

    player.goSwim()
    
} else if userInput5 ==  "no" {
        print("Alright, I'm going to keep seaeching for firewood.")
    
    }
    
print("Would you like to kill yourself?")
let userInput6 = readLine()
    if userInput6 == "yes"{
    toggle.finishGame()
}
    
    
    
    
    
    



