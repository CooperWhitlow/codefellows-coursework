//
//  PersonDetailViewController.swift
//  submission
//
//  Created by A. Cooper Whitlow on 10/1/15.
//  Copyright © 2015 Cooper Whitlow. All rights reserved.
//

import UIKit

class NameDetailViewController: UIViewController {

  var selectedFirstName = "None"
  var selectedLastName = "None"
  var uniqueAstrologicalSign : UIImage?
  
  @IBOutlet weak var firstNameLabel: UILabel!
  @IBOutlet weak var lastNameLabel: UILabel!
  @IBOutlet weak var astrologicalSignImage: UIImageView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      firstNameLabel.text = selectedFirstName
      lastNameLabel.text = selectedLastName
      astrologicalSignImage.image = uniqueAstrologicalSign
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
}
