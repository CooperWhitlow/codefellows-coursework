//
//  PersonDetailViewController.swift
//  submission
//
//  Created by A. Cooper Whitlow on 10/1/15.
//  Copyright © 2015 Cooper Whitlow. All rights reserved.
//

import UIKit

class NameDetailViewController: UIViewController, UITextFieldDelegate{

  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var zodiacSignImage: UIImageView!
  
  var selectedPerson : Person?
  var zodiacSign : UIImage?
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      firstNameTextField.text = selectedPerson?.firstName
      lastNameTextField.text = selectedPerson?.lastName
      zodiacSignImage.image = zodiacSign
      
      firstNameTextField.delegate = self
      lastNameTextField.delegate = self
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    
    selectedPerson!.firstName = firstNameTextField.text!
    selectedPerson!.lastName = lastNameTextField.text!
    
    textField.resignFirstResponder()
    
    return true
  }
}
