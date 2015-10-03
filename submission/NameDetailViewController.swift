//
//  PersonDetailViewController.swift
//  submission
//
//  Created by A. Cooper Whitlow on 10/1/15.
//  Copyright © 2015 Cooper Whitlow. All rights reserved.
//

import UIKit

class NameDetailViewController: UIViewController {

  var firstNameValue = "first"
  var lastNameValue = "last"
  
  @IBOutlet weak var firstNameLabel: UILabel!
  @IBOutlet weak var lastNameLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      firstNameLabel.text = firstNameValue
      lastNameLabel.text = lastNameValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
}
