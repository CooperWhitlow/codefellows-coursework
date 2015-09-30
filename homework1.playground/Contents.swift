// COOPER WHITLOW'S PLAYGROUND! (Homework 1)

import UIKit

var damagedSticksArray = [String]()

class Stick {
  var length : Int
  
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
      print("Shame on your family! *snaps chopsticks in half*")
      length = length / 2
      count = count * 2
    }
  }
}

class CueStick : Stick {
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
    damagedSticksArray.append("Damaged Skewer")
  }
}

class DrumStick : Stick {
  var count = 1
  
  func thrashBruh() {
    damagedSticksArray.append("Damaged Drum Stick")
  }
}

class BridgeStick : CueStick {
// subclass of a subclass of the Stick class...
}

let myChopsticks = Chopsticks(startingLength: 10)

let myCueStick = CueStick(startingLength:100)

let myWhippingStick = WhippingStick(startingLength: 100)

let mySkewerStick = SkewerStick(startingLength: 40)

let myDrumStick = DrumStick(startingLength:15)