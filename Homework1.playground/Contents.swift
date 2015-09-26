//COOPER WHITLOW'S HOMEWORK 1 (FII:iOS)

import UIKit

class Stick {
  var length : Int, width : Int
  var damagedSticksArray = [String]()
  
  init(startingLength: Int) {
    length = startingLength
  }
}

class Chopsticks : Stick {
  var count = 2
  
  func pickUpFood() {
    let success = arc4random_uniform(2)
    
    if success == 1 {
      print("You're a pro")
    } else {
      print("Shame on your family. *snaps chopstick in half*")
      length = length / 2
      count = 4
    }
  }
  
//Commented out until error resolved
//  func makeChopsticks(currentStick: String) {
//    print("Breaking stick...")
//    currentStick.length = currentStick.length / 2
//    currentStick.count = currentStick.count * 2
//  }
}

class PoolStick : Stick {
  var count = 1
  
  func shoot() {
    let success = arc4random_uniform(2)
    
    if success == 1 {
      print("Nice Shot!")
    } else {
      print ("Yep, you suck.")
    }
  }
}

class WhippingStick: Stick {
  var count = 1
  
  func whipMe() {
    print("...to each his own.")
  }
}

class SkewerStick : Stick {
  var count = 1
  
  func roast() {
     damagedSticksArray.append("damagedSkewer")
  }
}

class DrumStick : Stick {
  var count = 1
  
  func thrash() {
    count = 0
    
    damagedSticksArray.append("damagedDrumStick")
  }
}


let myChopsticks = Chopsticks(startingLength: 10)
myChopsticks.pickUpFood()

let myPoolStick = PoolStick(startingLength:100)
myPoolStick.shoot()

let myWhippingStick = WhippingStick(startingLength: 100)
myWhippingStick.whipMe()

let mySkewerStick = SkewerStick(startingLength: 40)
mySkewerStick.roast()

let myDrumStick = DrumStick(startingLength:15)
myDrumStick.thrash()

print(damagedSticksArray)
