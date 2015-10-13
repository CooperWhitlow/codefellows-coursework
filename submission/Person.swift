//
//  Persons.swift
//  submission
//
//  Created by A. Cooper Whitlow on 10/8/15.
//  Copyright © 2015 Cooper Whitlow. All rights reserved.
//

import UIKit

let firstNames = ["Anastasia", "Nastya", "Dasha", "Olga", "Katya", "Polina", "Masha", "Yana", "Sveta", "Ira", "Lena", "Natalia", "Darya", "Anya", "Sasha", "Catherine", "Vlada", "Kira", "Tatyana", "Galina"]
let lastNames = ["Smirnov", "Ivanov", "Kuznetsov", "Popov", "Vasiliev", "Petrov", "Mikhailov", "Sokolov", "Morozov", "Volkov", "Pavlov", "Kozlov", "Stepanov", "Nikolaev", "Orlov", "Emelianenko", "Tinkov", "Vlad", "Zubkov", "Kozak"]
let zodiacImages = [UIImage(named: "images/aries"), UIImage(named: "images/taurus"), UIImage(named: "images/gemini"), UIImage(named: "images/cancer"), UIImage(named: "images/leo"), UIImage(named: "images/virgo"), UIImage(named: "images/libra"), UIImage(named: "images/scorpio"), UIImage(named: "images/sagittarius"), UIImage(named: "images/capricorn"), UIImage(named: "images/aquarius"), UIImage(named: "images/pisces")]

class Person {
  
  var zodiacIndexAssignment : Int
  var firstName : String
  var lastName : String
  
  init (fName : String, lName : String) {
    firstName = fName
    lastName = lName
    zodiacIndexAssignment = Int(arc4random_uniform(UInt32(zodiacImages.count)))
  }
}