//
//  main.swift
//  DawnOfSurvival
//      Text Based Adventure Game
//  Created by Thomas Nyuma on 6/5/20.
//  Copyright © 2020 Thomas Nyuma. All rights reserved.
//

import Foundation

// structures for game elements

struct onoffSwitches {
    
    var gameOn:Bool!
    var gameOff:Bool!
    var gameOver:Bool!
    
    func finishGame() {
        
        print("The game is now over...would you like to replay?...Yes or No?")
        
        let userInnput = readLine()
        if userInnput == "yes"{
            runGame()
        } else {
            gameOff = true
        }
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
    
    
}

    func runGame(){
        enact.gameOn = true
        enact.gameOff = false
        print("Welcome to dawn of survival")
        
    }

    
    func eatFood() {
        print("Eating...")
        player.hunger  -=  10
        print("\(player.userName)'s hunger has been reduced by 10 xp.")
        if player.healthy == false {
            player.health += 5
        } else {
            _ = kCFAllocatorNull
            }
        }
    
    func goSwim() {
        print("Swimming...")
        player.hunger += 10
        print("\(player.userName)'s hunger increased by 10 xp.")
        player.Sanity -= 5
        print("\(player.userName)'s sanity hindered by -5 xp.")
        player.Sleepiness += 20
       print("\(player.userName)'s sleepiness increased by 20 xp.")
    }
    
    
    func goToSleep(){
        
        print("I will now go to sleep...")
        player.Sleepiness = 0
        player.Sanity = 50
        print("zzzZZZzzzzzZZZZzzzz...")
        print("I now feel refreshed!")
        print("\(player.userName)'s Sleepiness has been reduced back to 0.")
        print("\(player.userName)'s sanity is now back to it's default value of 50.")
        
}
    func cookFood() {
               print("I will now cook this food")
            
            
        }


struct Dog {
    var health: Int
    var runningSpeed = Int.random(in:1...10)
    
    
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

//Beginning of DOS from a user input standpoint

runGame()


print("Before you begin Dawn of Survival, please enter a name for your player.")

var player = Person(userName:readLine()! ,health: 100,hunger:50,Sleepiness: 0,Strength: 100,Armor: 0,Sanity: 50,healthy: true,hungry: false, sleepy: false)
var dog = Dog(health: 11, runningSpeed: 1)
var toggle = onoffSwitches(gameOn:Bool,gameOff:Bool,gameOver:Bool)

print("Hello \(player.userName)...the world has ended, the year is 2058, and you're stuck on an Island... All alone. You're a good man, but life just his you in the worst ways possible sometimes. Welcome to the World of Astoria.")

if player.health < 50 {
    player.healthy = false
}

if player.Sleepiness > 20 {
    while player.sleepy == true {
        player.Strength -= 50
        player.Sanity -= 20
    }
    print("I'm sleepy...")
    
}

print("Continue?...'yes' or 'no'")

var userInput = readLine()

    if userInput == "yes"   {
        
                print("Great. Now you're finally going to begin the real survival.")
        
                    }    else if userInput == "no"   {
        
        print("You'll regret this...")
}
print("There's plenty of resources on this island, but I should probably get sticks and try to create a fire...")

print("Damn....Now that I've been exploring for a while, there's not much around here, let's look for some food before the night comes upon me. ")

print("Continue?...'yes' or 'no'")

var userInput2 = readLine()
switch  userInput  {
case  "yes" :
    print("Oh look, an apple tree! I should try and get those apples from there and eat it.")
case "no" :
    break
default:
    break
}

print("Should you climb the apple tree? 'Yes' or 'No'")

var userInput3 = readLine()
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
var userInput4 = readLine()

if userInput4 == "Yes"{
    
    print("Maybe I should eat these apples, lets go...")
    
} else if userInput4 == "No" {
    _ =  kCFAllocatorNull
}

player.eatFood()

print("It's starting to get late, I need to make a shelter and get more fire wood...")

print("Ohh a river...should swim for a bit? 'yes' or 'no'")
 var userInput5 = readLine()


if userInput5 == "yes" {

    player.goSwim()
    
} else if userInput5 ==  "no" {
        print("Alright, I'm going to keep seaeching for firewood.")
    

}


*/