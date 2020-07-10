//
//  structs.swift
//  Dawn.
//
//  Created by Thomas Nyuma on 7/9/20.
//  Copyright © 2020 Thomas Nyuma. All rights reserved.
//

import Foundation
// Declahrations of public classes & structures with their specific methods

struct toggleSwitches {
    
    var gameOn:Bool
    var gameOff:Bool
    var gameOver:Bool
    
    func runGame(){
        print("""
                                                                                                DAWN   OF  SURVIVAL
                                                                                                 Made by @Nyumnat
                                                                                                    Enjoy :)
""")
        toggle.gameOn = true
        toggle.gameOff = false
        
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
    

}

struct orgCrew {
    
    var originalTen =
    [ 1: "Tom",
      3: "Sam",
        4: "Adam",
        5: "Chris",
        6: "Anna",
        7: "Kaite",
        8: "Eve",
        9: "Angelica",
        10: "Tyrone"
    ]
    
    func choosePlayer () {
        
        print("Which player would you like to play as?")
        
        
            for  person in  originalCrew.originalTen  {
                
                print("\(person.value)?")

            }
       
    }

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
        print("\(playerChoice!))'s hunger has been reduced by 10 xp.")
        if player.healthy == false {
            player.health += 5
        } else {
            _ = kCFAllocatorNull
            }
        }
    
    func goSwim() {   // Method to make user go for a swim.
        print("Swimming...")
        player.hunger += 10
        print("\(playerChoice!))'s hunger increased by 10 xp.")
        player.Sanity -= 5
        print("\(playerChoice!))'s sanity hindered by -5 xp.")
        player.Sleepiness += 20
       print("\(playerChoice!))'s sleepiness increased by 20 xp.")
    }
    
    
    func goToSleep(){  // Method to make user go to sleep
        
        print("I will now go to sleep...")
        player.Sleepiness = 0
        player.Sanity = 50
        print("zzzZZZzzzzzZZZZzzzz...")
        print("I now feel refreshed!")
        print("\(playerChoice!))'s Sleepiness has been reduced back to 0.")
        print("\(playerChoice!))'s sanity is now back to it's default value of 50.")
        
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
