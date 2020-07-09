//
//  main.swift
//      Text Based Adventure Game
//  Created by @Nyumat on 6/5/20.
//  Copyright © 2020 Thomas Nyuma. All rights reserved.
//

import Foundation

// Declarations of public classes & structures with their specific methods

struct toggleSwitches {
    
    var gameOn:Bool
    var gameOff:Bool
    var gameOver:Bool
    
    func runGame(){
        toggle.gameOn = true
        toggle.gameOff = false
        print("""
    DAWN   OF  SURVIVAL
     Made by @Nyumnat
        Enjoy :)
""")
        
    }
    
    func finishGame() {
        
        print("The game is now over...would you like to replay?...Yes or No?")
        
        let endInput = readLine()
        if endInput == "yes"{
            runGame()
        } else {
            toggle.gameOff = true
            while toggle.gameOff == true {
                break
            }
        }
    }
    
    func choosePlayer () {
        
    }

}

struct Peopleonplane {
    
    var Kayla:String
    var Tyler:String
    var Tom:String
    var Zach:String
    var Jake:String
    var Andrew:String
    var Martha:String
    var Stephanie:String
    
    
}

struct intoxiCate {
    
    var concetrates:String
    var alcohol:Int
    var edibles:String
    let Marijuana:String
    var potion1:Int
    var potion2:Int
    var potion3:Int
    
}

struct Person {
    
    var userName: String
    var health:  Int
    var hunger: Int
    var Sleepiness: Int
    var Strength: Int
    var Armor: Int
    var Sanity: Int
    var healthy: Bool
    var hungry: Bool
    var sleepy: Bool
    
    



    
    func eatFood() { // Method to make the user eat specified food.
        print("Eating...\(animals)")
        player.hunger  -=  10
        print("\(player.userName)'s hunger has been reduced by 10 xp.")
        if player.healthy == false {
            player.health += 5
        } else {
            _ = kCFAllocatorNull
            }
        }
    
    func goSwim() {   // Method to make user go for a swim.
        print("Swimming...")
        player.hunger += 10
        print("\(player.userName)'s hunger increased by 10 xp.")
        player.Sanity -= 5
        print("\(player.userName)'s sanity hindered by -5 xp.")
        player.Sleepiness += 20
       print("\(player.userName)'s sleepiness increased by 20 xp.")
    }
    
    
    func goToSleep(){  // Method to make user go to sleep
        
        print("I will now go to sleep...")
        player.Sleepiness = 0
        player.Sanity = 50
        print("zzzZZZzzzzzZZZZzzzz...")
        print("I now feel refreshed!")
        print("\(player.userName)'s Sleepiness has been reduced back to 0.")
        print("\(player.userName)'s sanity is now back to it's default value of 50.")
        
    }
    func cookFood() {
               print("I will now cook this food!")
               print("Cooking...")
        }
    }




struct Dog {
    
    var health: Int
    var runningSpeed: Int
    var Stength:Int
    var foodPoints:Int
    var Armor:Int
    
}

struct Rabbit {

    var health: Int
    var Strength: Int
    var Armor: Int
    var foodPoints: Int
    
    
}

struct TimeOfDay {
    
    var hour = (1...24)
    var minute = (1...60)
    
}

// Beginning of DawnOfSurvival from a user input standpoint.

var player = Person(userName:readLine()! ,health: 100,hunger:50,Sleepiness: 0,Strength: 100,Armor: 0,Sanity: 50,healthy: true,hungry: false, sleepy: false)
var toggle = toggleSwitches(gameOn:true, gameOff:false , gameOver: true)

let animals = ["dog","rabbit",]
    
// True begginning of DOS. Choose a player

print("Before you begin Dawn of Survival, please choose which player you'd like to play as.")

toggle.runGame()

    

var dog = Dog(health: 11, runningSpeed: 1,Stength: 30, foodPoints:5,Armor:5)

var time = TimeOfDay(hour:1...24,minute:0...60)

var rabbit = (health: 8, runningSpeed:1,Strength: 10, foodPoints: 30,Amor:0)

print("\(player.userName)...the world has ended and the year is 2058, your plane to mexico crashed and you're a sole survivor stuck on an Island... All alone. You're a good man, but life just his you in the worst ways possible sometimes. Welcome to the World of Astoria.")


if player.health < 50 {
    player.healthy = false
    print("\(player.userName), your health has dropped below 50 xp. Remember, if you get to 0, you die and the game ends. Eat food and sleep to replenish your health.")
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
    

    
    
    
    
    
    



